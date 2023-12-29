## CanonicalizeInductionVariableBenchmark

This benchmark checks if the compiler is capable of simplifying loops, transforming the induction variable and computations
that depends on it into a simpler form. In some cases, the loop can be completely removed and the body of the loop can 
be replaced with a constant value.

```
  @Benchmark
  public long baseline() {
    long result;
    for (result = 0; result != reducedLength; ++result) {}
    return result;
  }
  
  @Benchmark
  public long manual_canonicalize() {
    return (long) Math.sqrt(length) - start;
  }

  @Benchmark
  public long canonicalize() {
    long result = 0;
    for (long l = start; l * l < reducedLength; ++l) {
      result++;
    }
    return result;
  }
```

Source code: [CanonicalizeInductionVariableBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/CanonicalizeInductionVariableBenchmark.java)

[![CanonicalizeInductionVariableBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/CanonicalizeInductionVariableBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/CanonicalizeInductionVariableBenchmark.svg?raw=true)

### Analysis of baseline

The body of the loop in the baseline method is empty and the only side effect of the loop is the increment of the induction
variable that is then returned by the benchmark method. Therefore, it should be safe for the compiler to remove the loop
and replace the return value with a constant value (i.e. `reducedLength`).

#### C2 JIT Compiler and Oracle GraalVM JIT Compiler

Both C2 and the Oracle GraalVM JIT compilers are able to remove the loop and replace the return value with a constant.

```
  0x00007f8f80757bba:   mov    $0x400000,%eax               ; move the constant value into the return register
  0x00007f8f80757bbf:   add    $0x10,%rsp
  0x00007f8f80757bc3:   pop    %rbp
  0x00007f8f80757bc4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
  0x00007f8f80757bcb:   ja     0x00007f8f80757bd2
  0x00007f8f80757bd1:   ret                                 ; return the constant value (eax)
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler is able to compute the return value of the function and replace it with a constant. It fails
however to remove the loop, resulting in an empty bodied loop whose induction variable, `rax`, is overwritten. 

``` 
  0x00007f05a74bbce0:   inc    %rax                         ; increment the induction variable
  0x00007f05a74bbce3:   cmp    $0x400000,%rax               ; compare the induction variable with the loop bound
  0x00007f05a74bbcea:   jne    0x00007f05a74bbce0           ; jump back to the increment instruction if loop condition is true
  0x00007f05a74bbcec:   mov    $0x400000,%rax               ; overwrite the induction variable with the loop result
  0x00007f05a74bbcf3:   add    $0x18,%rsp
  0x00007f05a74bbcf7:   cmp    0x450(%r15),%rsp             ;   {poll_return}
  0x00007f05a74bbcfe:   ja     0x00007f05a74bbd12
  0x00007f05a74bbd04:   ret                                 ; return the constant value (rax)
```

### Analysis of canonicalize
The loop in the `canonicalize` method is slightly more complex than the one in the `baseline` method. The loop condition
requires the computation of the square of the induction variable and the loop body increments the method result. All 
three JIT compilers are not able to remove or simplify the loop.

```
  0x00007fddd74bab60:   mov    0x458(%r15),%r8              ; ImmutableOopMap {}
                                                            ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@7 (line 78)
                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 63)
  0x00007fddd74bab67:   test   %eax,(%r8)                   ;   {poll}
  0x00007fddd74bab6a:   inc    %r11                         ; increment the loop result variable
  0x00007fddd74bab6d:   inc    %r10                         ; increment the induction variable
  0x00007fddd74bab70:   mov    %r10,%r8                     ; perform the loop condition computation
  0x00007fddd74bab73:   imul   %r10,%r8                     ; ^ 
  0x00007fddd74bab77:   cmp    %r8,%rax                     ; compare against the loop bound
  0x00007fddd74bab7a:   jg     0x00007fddd74bab60           ; jump back to the loop start if loop condition is true
  0x00007fddd74bab7c:   mov    %r11,%rax                    ; place the result in the return register
```

### Conclusions

The C2 and Oracle GraalVM JIT compilers are able to remove the loop and replace the return value with a constant in the 
`baseline` case. The GraalVM CE JIT compiler is able to compute the return value but fails to remove the unnecessary loop.

In the `canonicalize` case, all three JIT compilers fail to remove the loop and show close performance results.


## DeadLocalAllocationStoreBenchmark

This benchmark checks if the compiler is able to remove dead allocations. A dead allocation is an allocation that is not
used by any subsequent instructions. The compiler should be capable of removing such allocations even across function
boundaries when inlining occurs.
```
  @Benchmark
  public Wrapper wrapper_obj_dse_inter_procedural() {
    Object obj1 = new Object();
    ...
    Object obj8 = new Object();
    return new Wrapper(obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8);
  }  

  @Benchmark
  public Wrapper wrapper_obj_baseline() {
    return new Wrapper();
  }
  
  private static class Wrapper {
    private Object obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8;

    public Wrapper() {
      this.obj1 = new Object();
      this.obj2 = new Object();
      this.obj3 = new Object();
      this.obj4 = new Object();
      this.obj5 = new Object();
      this.obj6 = new Object();
      this.obj7 = new Object();
      this.obj8 = new Object();
    }

    public Wrapper(
        Object obj1,
        Object obj2,
        Object obj3,
        Object obj4,
        Object obj5,
        Object obj6,
        Object obj7,
        Object obj8) {

      // inlining of the default constructor should enable the DSE and eliminate redundant allocations
      this();

      this.obj1 = obj1;
      this.obj2 = obj2;
      this.obj3 = obj3;
      this.obj4 = obj4;
      this.obj5 = obj5;
      this.obj6 = obj6;
      this.obj7 = obj7;
      this.obj8 = obj8;
    }
  }
```

Source code: [DeadLocalAllocationStoreBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/DeadLocalAllocationStoreBenchmark.java)

[![DeadLocalAllocationStoreBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/DeadLocalAllocationStoreBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/DeadLocalAllocationStoreBenchmark.svg?raw=true)

Looking at the plot above we can see that all compilers perform equally well in all cases except for `wrapper_obj_baseline`
and `wrapper_obj_dse_inter_procedural`.

### Analysis of wrapper_obj_baseline

This section analyzes the `wrapper_obj_baseline` benchmark.

#### C2 JIT Compiler and GraalVM CE JIT Compiler

The C2 and GraalVM CE JIT compilers are close in performance in the `wrapper_obj_baseline` case. Eight `Object` allocations
are performed in the generated assembly code and stored in the `Wrapper` object fields. The pattern of the
generated assembly code is the same for all eight allocations.

```
  0x00007f0e90639089:   mov    0x1b8(%r15),%rbx             ; load the TLAB top
  0x00007f0e90639090:   mov    %rbx,%r10
  0x00007f0e90639093:   add    $0x10,%r10                   ; bump pointer allocation in TLAB; allocate sizeof(Object) (16 bytes)
  0x00007f0e90639097:   nopw   0x0(%rax,%rax,1)             ; alignment nop
  0x00007f0e906390a0:   cmp    0x1c8(%r15),%r10             ; TLAB bounds check
  0x00007f0e906390a7:   jae    0x00007f0e90639905           ; Jump to slow path if TLAB is full. Try to request a new TLAB.
  0x00007f0e906390ad:   mov    %r10,0x1b8(%r15)             ; TLAB allocation successful, update TLAB top.
  0x00007f0e906390b4:   prefetchw 0xc0(%r10)                ; prefetch for the next allocation
  0x00007f0e906390bc:   movq   $0x1,(%rbx)                  ; set the mark word of the object (0x1 to mark it as unlocked)
  0x00007f0e906390c3:   movl   $0xe80,0x8(%rbx)             ; store the klass word  {metadata(&apos;java/lang/Object&apos;)}
  0x00007f0e906390ca:   mov    %r12d,0xc(%rbx)
  0x00007f0e906390ce:   cmpb   $0x0,0x40(%r15)
  0x00007f0e906390d3:   jne    0x00007f0e9063949c
  0x00007f0e906390d9:   mov    %rbx,%r11                    ; store the object reference in the local variable
  0x00007f0e906390dc:   shr    $0x3,%r11                    ; compute the oop from the full address
  0x00007f0e906390e0:   mov    %r11d,0x10(%rbp)             ; store the oop in the field
  ...
  ^ the above sequence is repeated for the remaining 7 allocations
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler is faster than the C2 and GraalVM CE JIT compilers. The reason for this is that it is
able to generate more compact assembly code for the grouped allocations that allows for better prefetching
and pipelining. On the fast path, it also performs a single TLAB allocation for the sum of the sizes of all the objects.

```
  0x00007f62bad7dfdf:   mov    0x1b8(%r15),%rax            ; load the TLAB top
  0x00007f62bad7dfe6:   lea    0xb0(%rax),%rsi             ; bump pointer allocation in TLAB = 48 (sizeof(Wrapper)) + 16 * 8 (sizeof(Object))
  0x00007f62bad7dfed:   cmp    0x1c8(%r15),%rsi            ; TLAB bounds check
  0x00007f62bad7dff4:   ja     0x00007f62bad7e151          ; jump to slow path if TLAB is full.
  0x00007f62bad7dffa:   mov    %rsi,0x1b8(%r15)            ; TLAB allocation successful, update TLAB top.
  0x00007f62bad7e001:   prefetchw 0x170(%rax)              ; prefetches for allocated objects and the next allocation
  0x00007f62bad7e008:   prefetchw 0x1b0(%rax)              ; ^
  0x00007f62bad7e00f:   prefetchw 0x1f0(%rax)              ; ^
  0x00007f62bad7e016:   prefetchw 0x230(%rax)              ; ^
  0x00007f62bad7e01d:   data16 xchg %ax,%ax                ; alignment nop
  0x00007f62bad7e020:   test   %rax,%rax                   ; edge case when TLAB allocation failed and a new TLAB was requested (rax = 0)
  0x00007f62bad7e023:   je     0x00007f62bad7e15d          ; ^ 
  0x00007f62bad7e029:   mov    %rax,%rsi                   ; rsi = rax = Wrapper object address
  0x00007f62bad7e02c:   lea    0x30(%rax),%r10             ; r10 = address of the first Object field
  0x00007f62bad7e030:   lea    0x40(%rax),%r11             ; r11 = address of the second Object field
  0x00007f62bad7e034:   lea    0x50(%rax),%r8              ; r8 = address of the third Object field
  0x00007f62bad7e038:   lea    0x60(%rax),%r9              ; r9 = address of the fourth Object field
  0x00007f62bad7e03c:   lea    0x70(%rax),%rcx             ; rcx = address of the fifth Object field
  0x00007f62bad7e040:   lea    0x80(%rax),%rbx             ; rbx = address of the sixth Object field
  0x00007f62bad7e047:   lea    0x90(%rax),%rdi             ; rdi = address of the seventh Object field
  0x00007f62bad7e04e:   lea    0xa0(%rax),%rdx             ; rdx = address of the eighth Object field
  0x00007f62bad7e055:   movq   $0x1,(%rax)                 ; set the mark word of the Wrapper object (0x1 to mark it as unlocked)
  0x00007f62bad7e05c:   movl   $0x102bd88,0x8(%rax)        ; store the klass word of the Wrapper object
  0x00007f62bad7e063:   shr    $0x3,%r10                   ; compute the oop of the first Object field
  0x00007f62bad7e067:   mov    %r10d,0xc(%rax)             ; store the oop in the field
  0x00007f62bad7e06b:   shr    $0x3,%r11                   ; compute the oop of the second Object field
  0x00007f62bad7e06f:   mov    %r11d,0x10(%rax)            ; store the oop in the field
  ... same pattern for the remaining 6 Object fields
  0x00007f62bad7e09f:   movq   $0x1,0x30(%rax)             ; set the mark word of the first Object field (0x1 to mark it as unlocked)
  0x00007f62bad7e0a7:   movl   $0xe80,0x38(%rax)           ; store the klass word of the first Object field
  0x00007f62bad7e0ae:   movq   $0x1,0x40(%rax)             ; set the mark word of the second Object field (0x1 to mark it as unlocked)
  0x00007f62bad7e0b6:   movl   $0xe80,0x48(%rax)           ; store the klass word of the second Object field
  ... same pattern for the remaining 6 Object fields
  0x00007f62bad7e129:   mov    %rsi,%rax                   ; move the Wrapper object address into the return register
```

### Analysis of wrapper_obj_dse_inter_procedural

This section analyzes the `wrapper_obj_dse_inter_procedural` benchmark.

#### C2 JIT Compiler and GraalVM CE JIT Compiler

The C2 and GraalVM CE JIT compilers fail to inline the `Wrapper` constructor into the benchmark method `wrapper_obj_dse_inter_procedural`.
This causes both compilers to perform additional object allocations in the constructor. 

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler is able to inline the `Wrapper` constructor into the benchmark method `wrapper_obj_dse_inter_procedural`.
This results in the elimination of the redundant allocations. The generated assembly code is therefore very similar to
the one generated for the `wrapper_obj_baseline` benchmark.

### Conclusions

In general, the Oracle GraalVM JIT seems to be more aggressive in inlining constructors and also generates more compact
TLAB allocation code for grouped allocations. Below is some high-level pseudo-code that shows how the Oracle GraalVM JIT
compiler performs TLAB allocations. The code does not fully resemble the assembly code:

```
void allocateObjects() {
  if (TLAB_SIZE > CURRENT_TLAB + sizeof(Object) * 3) {
      // fast path
      CURRENT_TLAB += sizeof(Object) * 3;
      obj1 = new Object();
      obj2 = new Object();
      obj3 = new Object();
  } else {
    // slow path
    // 1st object allocation
    if (TLAB_SIZE <= CURRENT_TLAB + sizeof(Object)) {
      // allocate a new TLAB
      CURRENT_TLAB = allocateNewTLAB();
    }
    obj1 = new Object();
    CURRENT_TLAB += sizeof(Object);
    
    // 2nd object allocation
    if (TLAB_SIZE <= CURRENT_TLAB + sizeof(Object)) {
        // allocate a new TLAB
        CURRENT_TLAB = allocateNewTLAB();
    }
    obj2 = new Object();
    CURRENT_TLAB += sizeof(Object);
    
    // 3rd object allocation
    if (TLAB_SIZE <= CURRENT_TLAB + sizeof(Object)) {
        // allocate a new TLAB
        CURRENT_TLAB = allocateNewTLAB();
    }
    obj3 = new Object();
    CURRENT_TLAB += sizeof(Object);
}
```

## MandelbrotVectorApiBenchmark

This benchmark tests the performance of Project Panama's Vector API when used to compute the Mandelbrot set.

The `baseline` benchmark uses single element computations and the JIT compilers might device to vectorize.
The `vectorized` benchmark uses the Vector API to perform the equivalent computation.

```
  @Benchmark
  public Object vectorized() {
    double threshold = 4;

    for (int row = 0;
        row < DOUBLE_VECTOR_SPECIES.loopBound(size);
        row += DOUBLE_VECTOR_SPECIES.length()) {
      DoubleVector row_vector = DoubleVector.broadcast(DOUBLE_VECTOR_SPECIES, (double) row);

      for (int col = 0;
          col < DOUBLE_VECTOR_SPECIES.loopBound(size);
          col += DOUBLE_VECTOR_SPECIES.length()) {
        DoubleVector col_vector =
            DoubleVector.broadcast(DOUBLE_VECTOR_SPECIES, (double) col).add(increments);
        DoubleVector c_re = col_vector.sub(size / 2.0).mul(4.0 / size);
        DoubleVector c_im = row_vector.sub(size / 2.0).mul(4.0 / size);

        DoubleVector x = DoubleVector.zero(DOUBLE_VECTOR_SPECIES);
        DoubleVector y = DoubleVector.zero(DOUBLE_VECTOR_SPECIES);

        DoubleVector x_square = x.mul(x);
        DoubleVector y_square = y.mul(y);

        DoubleVector iter_vector = DoubleVector.zero(DOUBLE_VECTOR_SPECIES);
        int iter = 0;
        while (iter < iterations) {
          DoubleVector x_new = x_square.sub(y_square).add(c_re);
          y = x.add(x).mul(y).add(c_im);
          x = x_new;

          x_square = x.mul(x);
          y_square = y.mul(y);

          VectorMask<Double> comp_res =
              x_square.add(y_square).compare(VectorOperators.LE, threshold);
          iter_vector = iter_vector.add(ones, comp_res);
          if (!comp_res.anyTrue()) {
            break;
          }
          iter++;
        }
        DoubleVector res_vector =
            DoubleVector.zero(DOUBLE_VECTOR_SPECIES)
                .add(1, iter_vector.compare(VectorOperators.EQ, iterations));
        res_vector.intoArray(result, row * size + col);
      }
    }
    return result;
  }
```

Source code: [MandelbrotVectorApiBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/vector/MandelbrotVectorApiBenchmark.java)

[![MandelbrotVectorApiBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/MandelbrotVectorApiBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/MandelbrotVectorApiBenchmark.svg?raw=true)

### Analysis of vectorized

The `baseline` benchmark performs equally well on all three JIT compilers. 
The `vectorized` benchmark performs differently between the JIT compilers and the same trend is kept regardless of the 
number of iterations or vector size used.

#### C2 JIT Compiler

The C2 JIT compiler implements all the Vector API compiler intrinsics required to vectorize the benchmark body and
therefore performs the fastert. It also unrolls the inner while loop of the benchmark by a factor of 4.

```
...                                                           ; more vectorized code above
0x00007f99386729e9:   vblendvps %ymm15,%ymm4,%ymm13,%ymm13    ; vectorized code
0x00007f99386729ef:   vtestps %ymm15,%ymm15                   ; if condition check of the inner while loop
0x00007f99386729f4:   je     0x00007f9938672805               ; break if true. Jump to inner for loop
0x00007f99386729fa:   add    $0x4,%r8d                        ; add while loop unroll factor
0x00007f99386729fe:   xchg   %ax,%ax                          ; nop
0x00007f9938672a00:   cmp    %esi,%r8d                        ; compare against loop bound
0x00007f9938672a03:   jl     0x00007f9938672900               ; jump back to the while loop start if loop condition is true
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler also implements all the Vector API compiler intrinsics required to vectorize the benchmark
body and generates similar assembly instructions as the C2 JIT compiler. One difference that can also account for the 
performance difference is that the Oracle GraalVM JIT compiler does not unroll the inner while loop.

```
...                                                       ; more vectorized code above
0x00007f8626da4400:   inc    %r14d                        ; increment the while loop induction variable by one
0x00007f8626da4403:   cmp    %r14d,%r11d                  ; compare against loop bound
0x00007f8626da4406:   jle    0x00007f8626da4495           ; exit loop if loop condition is false
0x00007f8626da440c:   vmovupd %ymm13,0x10(%rsp)           ; loop body contains vectorized code
...                                                       ; more vectorized code below
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler does not implement all the Vector API compiler intrinsics required to vectorize the benchmark
body and therefore falls back to the Java implementation of the Vector API. This results in a significant performance 
degradation and can be seen by looking at the hottest methods in the benchmark after inlining.

```
43.54%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d0e80::apply, version 2, compile id 1265 
27.72%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x00007f61f80d18d8::apply, version 2, compile id 1266 
16.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1276
```

### Conclusions

Both C2 and the Oracle GraalVM JIT compilers are able to vectorize the benchmark body and perform close in performance
and better than the `baseline` benchmark. 
The GraalVM CE JIT compiler is not able (yet) to vectorize the benchmark body and falls back to the Java implementation of the Vector API. 

## MegamorphicInterfaceCallBenchmark

This benchmark tests the performance of interface calls with a different number of targets. The JIT compiler is expected 
to optimize interface calls to a single receiver type with an instanceof check followed by a static call to the concrete
target method. This benchmark also tests the performance of manually splitting one call site into multiple monomorphic call sites.

```

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public void virtual_calls_chain() {
    I[] instances = this.instances;
    for (I instance : instances) {
      instance.foo();
    }
  }

  // Manually split the call site to receive only one target -> monomorphic
  @Benchmark
  @OperationsPerInvocation(SIZE)
  public void devirtualize_to_monomorphic() {
    byte[] instanceIndex = this.instanceIndex;
    I[] instances = this.instances;
    for (int i = 0; i < SIZE; i++) {
      I instance = instances[i];
      switch (instanceIndex[i]) {
        case 0:
          instance.foo();
          break;
        ... same pattern for all of the remaining targets
        case 5:
          instance.foo();
          break;
        default:
          throw new RuntimeException("Should not reach here.");
      }
    }
  }

  private static class C{1,..,6} implements I {}
  interface I extends I5 {
    private void baz() { foot_5(); }
    default void foo() { baz(); }
  }

  interface I5 extends I4 {
    private void baz_5() { foot_4(); }
    default void foo_5() { baz_5(); }
  }
  ... same pattern for all of the remaining interface declarations
  interface I1 {
    static Wrapper wrapper = new Wrapper();
    default void baz_1() { wrapper.x++; }
    private void foo_1() { baz_1(); 
  }

```

Source code: [MegamorphicInterfaceCallBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark.java)

[![MegamorphicInterfaceCallBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/MegamorphicInterfaceCallBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/MegamorphicInterfaceCallBenchmark.svg?raw=true)

### Analysis of virtual_calls_chain

The `virtual_calls_chain` benchmark measures the performance of interface calls with a different number of targets at
the call site.

#### C2 JIT Compiler

The C2 JIT compiler is able to devirtualize and inline through the entire interface chain call sites that use up to 
two different targets. In such cases, it also performs loop unrolling by a factor of 4 on the hot loop.

```
0x00007fd0d4638090:   mov    0x10(%r11,%rcx,4),%eax       ; load in %eax the oop from the instances array at offset %rcx  
0x00007fd0d4638095:   mov    0x8(%r12,%rax,8),%r10d       ; load the klass word of the object in %r10d
0x00007fd0d463809a:   nopw   0x0(%rax,%rax,1)             ; alignment nop
0x00007fd0d46380a0:   cmp    $0x1084000,%r10d             ; compare the klass word with the expected target klass
0x00007fd0d46380a7:   jne    0x00007fd0d463818d           ; jump if not equal to the slow path
...                                                       ; similar checks replicated 3 more times due to unroll factor of 4
0x00007fd0d4638112:   add    $0x4,%eax                    ; add 4 to the wrapper result
0x00007fd0d4638115:   mov    %eax,0xc(%rbp)               ; store the eax result
0x00007fd0d4638118:   add    $0x4,%ecx                    ; increment the loop induction variable by 4
0x00007fd0d463811b:   cmp    %esi,%ecx                    ; compare against the loop bound
0x00007fd0d463811d:   data16 xchg %ax,%ax                 ; alignment nop
0x00007fd0d4638120:   jl     0x00007fd0d4638090           ; jump back to the loop start if loop condition is true
```

For more than three targets, the C2 JIT compiler always uses a series of interface calls to reach the target method.

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler inlines for a number of targets lower or equal to four. If more targets are present
(.e.g `virtual_calls_chain[MEGAMORPHIC_5]` and `virtual_calls_chain[MEGAMORPHIC_6]`), then it will check for 
the first four targets. If none of the targets match, then it will use an interface call to reach the target method.

```
  0x00007f2092ff8576:   mov    0x8(,%rsi,8),%ebx            ; load the klass word of the object in %ebx
  0x00007f2092ff857d:   cmp    $0x102c000,%ebx              ; check if instance of C2
  0x00007f2092ff8583:   je     0x00007f2092ff86d3           ; jump to fully inlined C2 method
  0x00007f2092ff8589:   cmp    $0x10259f0,%ebx              ; check if instance of C1
  0x00007f2092ff858f:   je     0x00007f2092ff8709           ; jump to fully inlined C1 method
  0x00007f2092ff8595:   cmp    $0x102c2c0,%ebx              ; check if instance of C3
  0x00007f2092ff859b:   je     0x00007f2092ff86fd           ; jump to fully inlined C3 method
  0x00007f2092ff85a1:   cmp    $0x102c580,%ebx              ; check if instance of C4
  0x00007f2092ff85a7:   je     0x00007f2092ff8715           ; jump to fully inlined C4 method
  0x00007f2092ff85ad:   mov    %r11d,0xc(%rsp)              ; save the loop induction variable to the stack in case of deoptimization
  0x00007f2092ff85b2:   test   %eax,0x0(,%rsi,8)            ; deopt check 
  0x00007f2092ff85b9:   shl    $0x3,%rsi                    ; compute the full address from the oop
  0x00007f2092ff85bd:   movabs $0x7f1fd002cb00,%rax
  0x00007f2092ff85c7:   call   0x00007f2092ff63a0           ; perform the interface call to reach the target method
```

If a dominant target is present (e.g. `virtual_calls_chain[MEGAMORPHIC_6_DOMINANT_TARGET]`), then the Oracle GraalVM JIT compiler
will devirtualize and inline for the common case and use the interface call for the remaining cases.

```
  // High-level pseudo-code of the optmization for a dominant target
  if (receiver instanceof DominantTarget) {
    // fast path. 
    DominantTarget.method(); // inlined
  } else {
    // slow path. Use an interface call to reach the target method.
    receiver.method();
  }
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT Compiler is able to devirtualize (and inline) through the chain of interface calls
for all the number of targets used in the benchmark. It does not perform loop unrolling, but uses a series of compare and jump 
instructions (by checking against the method constant pool) to check if the receiver is an instance of an expected target type. 
Since in our benchmark all calls resolve to the same target method, the GraalVM CE JIT Compiler is able to inline only 
once the target method.

### Analysis of devirtualize_to_monomorphic

The `devirtualize_to_monomorphic` benchmark measures the performance and effectiveness of trying to manually split
a megamorphic call site into multiple monomorphic call sites. The benchmark uses a switch statement where each case
will always resolve to the same target method. 

#### C2 JIT Compiler and GraalVM CE JIT Compiler

Both the C2 JIT compiler and the GraalVM CE JIT compiler are able to devirtualize and inline through the entire interface
chain calls. The same applies when a dominant target is present. 

```
0x00007f21a7242090:   cmp    $0x1c20,%r11d                ; compare the loop induction variable against the loop bound
0x00007f21a7242097:   jge    0x00007f21a72421bd           ; jump out of the loop if the loop condition is false
0x00007f21a724209d:   mov    0x10(%r10,%r11,4),%ebx       ; load this.instances[i] in %ebx
0x00007f21a72420a2:   movsbl 0x10(%r11,%r8,8),%edx        ; load this.instanceIndex[i] in %edx
0x00007f21a72420a8:   mov    %r11d,%esi                   ; move the loop induction variable in %esi
0x00007f21a72420ab:   inc    %esi                         ; increment the loop induction variable by one
0x00007f21a72420ad:   inc    %r9d                         ; add 1 to the register containing the wrapper result
0x00007f21a72420b0:   cmp    $0x3,%edx                    ; switch logic starts here. Compare the instanceIndex[i] against 3
0x00007f21a72420b3:   jge    0x00007f21a72420dd           ; ... and through one or more jumps land on the correct case
0x00007f21a72420b9:   cmp    $0x2,%edx                    
0x00007f21a72420bc:   nopl   0x0(%rax)                    
0x00007f21a72420c0:   jge    0x00007f21a724213d           
0x00007f21a72420c6:   cmp    $0x0,%edx                    
0x00007f21a72420c9:   je     0x00007f21a72420fd           
0x00007f21a72420cf:   cmp    $0x1,%edx                    
0x00007f21a72420d2:   je     0x00007f21a724211d           
0x00007f21a72420d8:   jmp    0x00007f21a7242355           
0x00007f21a72420dd:   cmp    $0x5,%edx                    
0x00007f21a72420e0:   jg     0x00007f21a7242355           
0x00007f21a72420e6:   cmp    $0x5,%edx
0x00007f21a72420e9:   jge    0x00007f21a724219d
0x00007f21a72420ef:   cmp    $0x3,%edx
0x00007f21a72420f2:   je     0x00007f21a724215d
0x00007f21a72420f8:   jmp    0x00007f21a724217d           ; switch logic ends here.
0x00007f21a72420fd:   data16 xchg %ax,%ax                 ; alignment nop. Case 0 starts here
0x00007f21a7242100:   cmpl   $0x1080810,0x8(,%rbx,8)      ; monomorphic call site check. Compare the klass word of the object in %rbx with the expected target klass  
0x00007f21a724210b:   jne    0x00007f21a724229c           ; jump to the slow path if the check fails
0x00007f21a7242111:   mov    %r9d,0xc(%rdi)               ; store the wrapper result in the field
0x00007f21a7242115:   mov    %esi,%r11d                   ; move the loop induction variable in %r11d
0x00007f21a7242118:   jmp    0x00007f21a7242090           ; jump back to the loop beginning
... similar code for the remaining cases below ...
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler is able to is able to devirtualize and inline only for a number of four call sites or less.
For the remaining call sites, it will devirtualize up to a certain depth in the interface chain and then use an interface
call. 

```
0x00007f7152d81f15:   shl    $0x3,%r9                     ; compute the full address from the oop
0x00007f7152d81f19:   mov    %r9,%rsi                     ; move the full address in %rsi
0x00007f7152d81f1c:   mov    %r9,0x10(%rsp)               ; save the full address to the stack
0x00007f7152d81f21:   xchg   %ax,%ax                      ; nop
0x00007f7152d81f23:   call   0x00007f7152d7fbc0           ; invokeinterface foo_4
                                                          ; MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                          ; MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                          ; MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                          ; MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                          ; MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
                                                          ; {optimized virtual_call}
```

### Conclusions

When it comes to interface calls, GraalVM CE JIT performs best across all the benchmark configurations. It is then 
closely followed by the Oracle GraalVM JIT compiler. The C2 JIT compiler does not perform very well when the number 
of targets is higher than two. With small exceptions, all compilers perform equally well when manual call site
splitting is applied.

## MegamorphicMethodCallBenchmark

This benchmark tests the performance of virtual calls with a different number of targets. The JIT compiler is expected
to optimize virtual calls up to a certain number of targets. It also tests the performance of manually splitting one
megamorphic call site into multiple monomorphic call sites.

The benchmark is structured as follows:
```
  @Benchmark
  @OperationsPerInvocation(SIZE)
  public void virtual_call() {
    CMath[] instances = this.instances;
    for (CMath instance : instances) {
      instance.compute();
    }
  }

  // Manually split the call site to receive only one target -> monomorphic
  // Note: this is a trick trying to bypass some specific JVM limitations
  @Benchmark
  @OperationsPerInvocation(SIZE)
  public void devirtualize_to_monomorphic() {
    byte[] classIndex = this.classIndex;
    CMath[] instances = this.instances;
    for (int i = 0; i < SIZE; i++) {
      CMath instance = instances[i];
      switch (classIndex[i]) {
        case 0:
          instance.compute();
          break;
        case 1:
          instance.compute();
          break;
        case 2:
          instance.compute();
          break;
        case 3:
          instance.compute();
          break;
        case 4:
          instance.compute();
          break;
        case 5:
          instance.compute();
          break;
        case 6:
          instance.compute();
          break;
        case 7:
          instance.compute();
          break;
        default:
          throw new RuntimeException("Should not reach here.");
      }
    }
  }
  
  private abstract static class CMath {
    int c1, c2, c3, c4, c5, c6, c7, c8;

    public abstract int compute();
  }
  
  private static class Alg1 extends CMath {
    public int compute() {
      return ++c1;
    }
  }
  ... same pattern for all of the remaining classes
  private static class Alg8 extends CMath {
    public int compute() {
      return ++c8;
    }
  }
```

In general, the runtime collects receiver-type statistics per call site during the execution of profiled code (in the 
interpreter or the C1 JIT). These statistics are further used in the optimizing compiler (e.g., C2 JIT). If, for example,
one call site `class.method()` has received only `Type1` even though there exists a `Type2` in the type hierarchy, the compiler 
can add a guard that checks the receiver type is `Type1` and then call the `Type1` method directly. 
This is called a monomorphic call site:

```
// High-level pseudo-code of the monomorphic call site optimization
if (receiver instanceof Type1) {
    // fast path
    Type1.method();
} else {
    // slow path. Will deoptimize and rerun in the interpreter
    deoptimize();
}
```

A `bimorphic call site` is a call site that can check for two receivers types:

```
// High-level pseudo-code of the bimorphic call site optimization
if (receiver instanceof Type1) {
    // fast path
    Type1.method();
} else if (receiver instanceof Type2) {
    // fast path
    Type2.method();
} else {
    // slow path. Will deoptimize and rerun in the interpreter. Next time it JITs, it will use a virtual call
    deoptimize();
}
```

Once a call site becomes static, the compiler will be able to inline the target method and perform further optimizations.

Source code: [MegamorphicMethodCallBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark.java)

[![MegamorphicMethodCallBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/MegamorphicMethodCallBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/MegamorphicMethodCallBenchmark.svg?raw=true)

### Analysis of virtual_call

The `virtual_call` benchmark measures the performance of virtual calls with a different number of targets at the call site.

#### C2 JIT Compiler

The C2 JIT compiler is able to devirtualize and inline call sites that use up to two different targets. In such cases,
it also performs loop unrolling by a factor of two.

```
0x00007f2cbc758990:   incl   0x10(%r11)                   ; increment the Alg2 counter    
0x00007f2cbc758994:   add    $0x2,%edx                    ; add 2 to the loop induction variable
0x00007f2cbc758997:   cmp    %eax,%edx                    ; compare against the loop bound
0x00007f2cbc758999:   jge    0x00007f2cbc75895f           ; jump out of the loop if the loop condition is false
0x00007f2cbc75899b:   mov    0x10(%rsi,%rdx,4),%r10d      ; load this.instances[i] in %r10d
0x00007f2cbc7589a0:   mov    0x8(%r12,%r10,8),%r8d        ; load the klass word of the object in %r8d
0x00007f2cbc7589a5:   lea    (%r12,%r10,8),%r11           ; load the object address in %r11
0x00007f2cbc7589a9:   cmp    $0x1026638,%r8d              ; compare the klass word against MegamorphicMethodCallBenchmark$Alg2
0x00007f2cbc7589b0:   je     0x00007f2cbc7589c1           ; if equal jump to the inlined method that increments the Alg2 counter 
0x00007f2cbc7589b2:   cmp    $0x1026430,%r8d              ; compare the klass word againsst MegamorphicMethodCallBenchmark$Alg1
0x00007f2cbc7589b9:   jne    0x00007f2cbc7589ed           ; if not equal jump to the slow path which deoptimizes in this case 
0x00007f2cbc7589bb:   incl   0xc(%r11)                    ; increment the Alg1 counter
0x00007f2cbc7589bf:   jmp    0x00007f2cbc7589c5           ; jump past the increment Alg2 counter code 
0x00007f2cbc7589c1:   incl   0x10(%r11)                   ; increment the Alg2 counter
0x00007f2cbc7589c5:   mov    0x14(%rsi,%rdx,4),%r11d      ; load this.instances[i + 1] in %r11d
0x00007f2cbc7589ca:   mov    0x8(%r12,%r11,8),%r10d       ; load the klass word of the object in %r10d
0x00007f2cbc7589cf:   shl    $0x3,%r11                    ; compute the full address from the oop
0x00007f2cbc7589d3:   cmp    $0x1026638,%r10d             ; compare the klass word against MegamorphicMethodCallBenchmark$Alg2
0x00007f2cbc7589da:   je     0x00007f2cbc758990           ; if equal jump to the inlined method that increments the Alg2 counter
0x00007f2cbc7589dc:   cmp    $0x1026430,%r10d             ; compare the klass word against MegamorphicMethodCallBenchmark$Alg1
0x00007f2cbc7589e3:   jne    0x00007f2cbc7589eb           ; if not equal jump to the slow path which deoptimizes in this case
0x00007f2cbc7589e5:   incl   0xc(%r11)                    ; increment the Alg1 counter
0x00007f2cbc7589e9:   jmp    0x00007f2cbc758994           ; jump back to the loop beginning
```

If the number of targets is higher than two, the C2 JIT compiler always uses a virtual call to reach the target method.

```
0x00007f41b8758e80:   mov    (%rsp),%r11                  ; load the instances array base address in %r11 from the stack
0x00007f41b8758e84:   mov    0x10(%r11,%rbp,4),%r10d      ; load this.instances[i] in %r10d
0x00007f41b8758e89:   mov    %r11,(%rsp)                  ; store the instances array base address on the stack
0x00007f41b8758e8d:   mov    %r10,%rsi                    ; move the this.instances[i] in %rsi 
0x00007f41b8758e90:   shl    $0x3,%rsi                    ; compute the full address from the oop
0x00007f41b8758e94:   nop                                 ; alignment nop
0x00007f41b8758e95:   movabs $0x7f40f8026430,%rax
0x00007f41b8758e9f:   call   0x00007f41b7fa1e20           ; virtual call to the compute method
0x00007f41b8758ea4:   nopl   0x214(%rax,%rax,1)           ; more nops
0x00007f41b8758eac:   inc    %ebp                         ; increase the loop induction variable by one
0x00007f41b8758eae:   cmp    0x8(%rsp),%ebp               ; compare against the loop bound
0x00007f41b8758eb2:   jl     0x00007f41b8758e80           ; jump back to the loop beginning if the loop condition is true
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT Compiler devirtualizes and inlines call sites that use up to four different targets. If the number
of targets is higher, then the compiler will use a virtual call for the remaining targets.
This can be observed either by looking at the generated assembly code or by looking at the hottest methods in the benchmark.

Since the assembly code for the `virtual_call` method is quite large due to a loop unrolling factor of two, 
the equivalent high-level pseudo-code is shown below:
```
if (receiver instanceof Type1) {
    // fast path
    Type1.method();
} else if (receiver instanceof Type2) {
    // fast path
    Type2.method();
} else if (receiver instanceof Type3) {
    // fast path
    Type3.method();
} else {
    // slow path. Will not deoptimize, but rather use a virtual call for the remaining targets.
    receiver.method();
}
```

The hottest methods in the benchmark `virtual_call[MEGAMORPHIC_5]` are shown below. As expected, a single `compute` method 
shows up in the list because the remaining methods have been inlined in `virtual_call`.  
```
....[Hottest Regions].....................................................
  84.82%      jvmci, level 4  MegamorphicMethodCallBenchmark::virtual_call 
  12.24%      jvmci, level 4  MegamorphicMethodCallBenchmark$Alg4::compute
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT Compiler is able to devirtualize and inline call sites regardless of the
number of targets used in benchmark.

**Note**: When generating assembly, we forced the compiler not to inline the 
benchmark method into the JMH stub. In this case, the `virtual_call[MEGAMORPHIC_8]` benchmark
performed similar in performance to the `virtual_call[MEGAMORPHIC_7]` benchmark. 
There can be multiple reasons that can limit this kind of compiler optimizations
and some of them are: the size of the generated code, inlining decisions taken 
for the caller and different profile information collected by 
the C1 compiler and the interpreter.

Below is the assembly code for the `virtual_call[MEGAMORPHIC_7]` benchmark:
```
0x00007f9587241de0:   cmp    %r8d,%r11d                   ; compare the loop induction variable against the loop bound
0x00007f9587241de3:   jle    0x00007f9587241edc           ; jump out of the loop if the loop condition is false
0x00007f9587241de9:   mov    0x10(%r10,%r8,4),%r9d        ; load this.instances[i] in %r9
0x00007f9587241dee:   mov    0x8(,%r9,8),%ecx             ; load the klass word of this.instances[i] in %ecx
0x00007f9587241df6:   movabs $0x7f9507000000,%rbx         ; move the heap base in %rbx
0x00007f9587241e00:   lea    (%rbx,%rcx,1),%rcx           ; load the address of the klass word in %rcx
0x00007f9587241e04:   mov    %r8d,%ebx                    ; move the loop induction variable in %ebx
0x00007f9587241e07:   inc    %ebx                         ; increment the loop induction variable by one
0x00007f9587241e09:   cmp    -0x190(%rip),%rcx            ; compare the klass word against one of the expected targets.
                                                          ; the expected klass words are stored in the constant pool by the GraalVM CE JIT Compiler 
0x00007f9587241e10:   je     0x00007f9587241e6c           ; if equal jump to the inlined method that increments the Alg1 counter   
0x00007f9587241e16:   cmp    -0x195(%rip),%rcx            ; compare the klass word against one of the expected targets
0x00007f9587241e1d:   data16 xchg %ax,%ax                 ; alignment nop
0x00007f9587241e20:   je     0x00007f9587241e7c           ; if equal jump to the inlined method that increments the Alg2 counter
... similar code for the remaining targets below ...
0x00007f9587241e67:   jmp    0x00007f9587241f96           ; if none of the targets match, then jump to the slow path which deoptimizes
0x00007f9587241e6c:   incl   0xc(,%r9,8)                  ; increment the c1 field
0x00007f9587241e74:   mov    %ebx,%r8d                    ; move the loop induction variable in %r8d
0x00007f9587241e77:   jmp    0x00007f9587241de0           ; jump back to the loop beginning
0x00007f9587241e7c:   incl   0x10(,%r9,8)                 ; increment the c2 field
0x00007f9587241e84:   mov    %ebx,%r8d                    ; move the loop induction variable in %r8d
0x00007f9587241e87:   jmp    0x00007f9587241de0           ; jump back to the loop beginning
... similar code for the remaining targets below ...
0x00007f9587241edc:   mov    0x10(%rsp),%rbp 
0x00007f9587241ee1:   add    $0x18,%rsp                   ; pop the stack
0x00007f9587241ee5:   cmp    0x450(%r15),%rsp             ; safepoint poll check
0x00007f9587241eec:   ja     0x00007f958724200f           ; jump to safepoint handling if required
0x00007f9587241ef2:   ret                                 ; return to the caller
```

### Analysis of devirtualize_to_monomorphic

The `devirtualize_to_monomorphic` benchmark measures the performance and effectiveness of trying to manually split
a megamorphic call site into multiple monomorphic call sites. The benchmark uses a switch statement where each case
will always resolve to the same target method.
 
Overall, all JVMs perform the same and are able to devirtualize and inline at the call sites. Below is the assembly
code generated by the GraalVM CE JIT Compiler for the `devirtualize_to_monomorphic[MEGAMORPHIC_8]` benchmark:
``` 
0x00007fa0032421a0:   cmp    $0x9d80,%r11d                ; compare the loop induction variable against the loop bound
0x00007fa0032421a7:   jge    0x00007fa003242349           ; jump out of the loop if the loop condition is false
0x00007fa0032421ad:   mov    0x10(%r10,%r11,4),%r9d       ; load this.instances[i] in %r9d
0x00007fa0032421b2:   movsbl 0x10(%r11,%r8,8),%ebx        ; load this.classIndex[i] in %ebx
0x00007fa0032421b8:   mov    %r11d,%edi                   ; move the loop induction variable in %edi
0x00007fa0032421bb:   inc    %edi                         ; increment the loop induction variable by one
0x00007fa0032421bd:   cmp    $0x5,%ebx                    ; switch logic starts here.
0x00007fa0032421c0:   jge    0x00007fa003242205
0x00007fa0032421c6:   cmp    $0x3,%ebx
0x00007fa0032421c9:   jge    0x00007fa0032421f4
0x00007fa0032421cf:   cmp    $0x2,%ebx
0x00007fa0032421d2:   jge    0x00007fa003242327
0x00007fa0032421d8:   cmp    $0x0,%ebx
0x00007fa0032421db:   nopl   0x0(%rax,%rax,1)
0x00007fa0032421e0:   je     0x00007fa003242247
0x00007fa0032421e6:   cmp    $0x1,%ebx
0x00007fa0032421e9:   je     0x00007fa003242269
0x00007fa0032421ef:   jmp    0x00007fa003242569
0x00007fa0032421f4:   cmp    $0x3,%ebx
0x00007fa0032421f7:   je     0x00007fa00324228b
0x00007fa0032421fd:   data16 xchg %ax,%ax
0x00007fa003242200:   jmp    0x00007fa0032422cf
0x00007fa003242205:   cmp    $0x7,%ebx
0x00007fa003242208:   jg     0x00007fa003242569
0x00007fa00324220e:   cmp    $0x7,%ebx
0x00007fa003242211:   jge    0x00007fa003242225
0x00007fa003242217:   cmp    $0x5,%ebx
0x00007fa00324221a:   je     0x00007fa003242305
0x00007fa003242220:   jmp    0x00007fa0032422ad           ; switch logic ends here.
0x00007fa003242225:   cmpl   $0x1084a28,0x8(,%r9,8)       ; compare the klass word against the Alg8 klass 
0x00007fa003242231:   jne    0x00007fa003242460           ; if not equal jump to the slow path which deoptimizes in this case
0x00007fa003242237:   incl   0x28(,%r9,8)                 ; increment the c8 field
0x00007fa00324223f:   mov    %edi,%r11d                   ; move the increment induction variable to %r11d
0x00007fa003242242:   jmp    0x00007fa0032421a0           ; jump back to the loop beginning
0x00007fa003242247:   cmpl   $0x102bad0,0x8(,%r9,8)       ; compare the klass word against the Alg1 klass 
0x00007fa003242253:   jne    0x00007fa00324258d           ; jump to the slow path which deoptimizes in this case
0x00007fa003242259:   incl   0xc(,%r9,8)                  ; increment the c1 field
0x00007fa003242261:   mov    %edi,%r11d                   ; move the increment induction variable to %r11d
0x00007fa003242264:   jmp    0x00007fa0032421a0           ; jump back to the loop beginning
... similar code for the remaining cases below ...
0x00007fa00324234e:   add    $0x18,%rsp                   ; pop the stack
0x00007fa003242352:   cmp    0x450(%r15),%rsp             ; safepoint poll check
0x00007fa003242359:   ja     0x00007fa0032425f9           ; jump to safepoint handling if required
0x00007fa00324235f:   ret                                 ; return to the caller
```

The only exception in regard to the performance of the benchmark is with OpenJDK in 
devirtualize_to_monomorphic[MEGAMORPHIC_8].

TODO: Florin: Run this benchmark on the XPS laptop with print assembly to check why the C2 JIT compiler does not
perform equally well as the other compilers. This does not happen on the desktop machine.

### Conclusions

In general, the GraalVM CE JIT compiler performs best across all the benchmark configurations, both for megamorphic
and manually split monomorphic call sites. It is then closely followed by the Oracle GraalVM JIT compiler. 

The C2 JIT compiler falls back to virtual calls for call sites with more than two targets. It does however
manage to devirtualize and inline when a call site with multiple targets is manually split into monomorphic call sites
(i.e. the `devirtualize_to_monomorphic` benchmark).

## MethodArgsBusterBenchmark

This benchmark is used to test how the JIT compiler handles methods that take a huge number of arguments.

Normally, the JIT compiler should be able to inline the method and return a constant value. 
However, if a method takes a large number of arguments, the JIT may bail out when trying to compile the method.

```
  @Benchmark
  public long method_args_buster() {
    // returns 204
    return tooManyArgsMethod(
        0.0, 0.1, 0.2, 0.3, ..., 6.2, 6.3);
  }

  private long tooManyArgsMethod(
      double d00,
      double d01,
      double d02,
      double d03,
      ...
      double d63) {

      return Math.round(d00)
        + Math.round(d01)
        + Math.round(d02)
        ...
        + Math.round(d63);
    }
```

Source code: [MethodArgsBusterBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/MethodArgsBusterBenchmark.java)

[![MethodArgsBusterBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/MethodArgsBusterBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/MethodArgsBusterBenchmark.svg?raw=true)

### Analysis of method_args_buster

This section analyzes the performance of the `method_args_buster` benchmark.

#### C2 JIT Compiler

The C2 JIT compiler does not compile the `tooManyArgsMethod` method into the benchmark method. Instead, the final version of
this method that is executed is JITed by the C1 compiler. The C1 compiler does not inline the `Math::round` method
into the `tooManyArgsMethod` method, resulting in a long chain of calls.

Below is a snippet of the assembly code generated by the C1 compiler for the `tooManyArgsMethod` benchmark:
```
... similar assembly above...
0x00007f8afc638ce7:   call   0x00007f8afc6382a0           ; call the Math::round method
0x00007f8afc638cec:   nopl   0x20004dc(%rax,%rax,1)       ; alignment nops
0x00007f8afc638cf4:   mov    0x30(%rsp),%rsi              ; load the intermediate result from the stack in %rsi
0x00007f8afc638cf9:   add    %rax,%rsi                    ; add the Math::round result to the intermediate result
0x00007f8afc638cfc:   vmovsd 0x230(%rsp),%xmm0            ; load the next argument in %xmm0
0x00007f8afc638d05:   mov    %rsi,0x38(%rsp)              ; store the intermediate result on the stack
0x00007f8afc638d0a:   nopl   0x0(%rax,%rax,1)             ; alignment nops
0x00007f8afc638d0f:   call   0x00007f8afc6382a0           ; call the Math::round method again
... similar assembly below...
```

The hottest methods in the benchmark are shown below:
```
....[Hottest Regions]...............................................................................
  57.56%         c2, level 4  java.lang.Math::round 
  33.80%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::tooManyArgsMethod 
   5.13%         c1, level 1  com.ionutbalosin.jvm.performance.benchmarks.compiler.MethodArgsBusterBenchmark::method_args_buster
```

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

Both the Oracle GraalVM JIT Compiler and the GraalVM CE JIT Compiler are able to inline the `tooManyArgsMethod` method
and return a constant value. Below is a section of the assembly code generated by the GraalVM CE JIT Compiler for 
the `method_args_buster` method:
```
0x00007fb65323c2ba:   mov    $0xcc,%rax                   ; move 204, the constant result of the method in the return register %rax
0x00007fb65323c2c1:   add    $0x18,%rsp                   ; pop the stack
0x00007fb65323c2c5:   cmp    0x450(%r15),%rsp             ; check if a safepoint is required
0x00007fb65323c2cc:   ja     0x00007fb65323c2e0           ; jump to safepoint handling if required
0x00007fb65323c2d2:   ret                                 ; return to the caller
```

### Conclusions

The C2 JIT Compiler can fail sooner to compile a method that takes a large number of arguments than the Graal JIT Compilers.
Thankfully, most IDEs will warn the developer way before this threshold is reached.

## NpeControlFlowBenchmark

... TODO ...

Source code: [TODOBenchmarkName.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/TODOBenchmarkName.java)

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

### Analysis

#### C2 JIT Compiler

... TODO ...

#### Oracle GraalVM JIT Compiler

... TODO ...

#### GraalVM CE JIT Compiler

... TODO ...

### Conclusions

... TODO ...

## NpeThrowBenchmark

... TODO ...

Source code: [TODOBenchmarkName.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/TODOBenchmarkName.java)

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

### Analysis

#### C2 JIT Compiler

... TODO ...

#### Oracle GraalVM JIT Compiler

... TODO ...

#### GraalVM CE JIT Compiler

... TODO ...

### Conclusions

... TODO ...

## SepiaVectorApiBenchmark

... TODO ...

Source code: [TODOBenchmarkName.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/TODOBenchmarkName.java)

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

### Analysis

#### C2 JIT Compiler

... TODO ...

#### Oracle GraalVM JIT Compiler

... TODO ...

#### GraalVM CE JIT Compiler

... TODO ...

### Conclusions

... TODO ...

## StackSpillingBenchmark

... TODO ...

Source code: [TODOBenchmarkName.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/TODOBenchmarkName.java)

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

### Analysis

#### C2 JIT Compiler

... TODO ...

#### Oracle GraalVM JIT Compiler

... TODO ...

#### GraalVM CE JIT Compiler

... TODO ...

### Conclusions

... TODO ...

## TypeCheckScalabilityBenchmark

... TODO ...

Source code: [TODOBenchmarkName.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/TODOBenchmarkName.java)

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

### Analysis

#### C2 JIT Compiler

... TODO ...

#### Oracle GraalVM JIT Compiler

... TODO ...

#### GraalVM CE JIT Compiler

... TODO ...

### Conclusions

... TODO ...

## TypeCheckSlowPathBenchmark

... TODO ...

Source code: [TODOBenchmarkName.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/TODOBenchmarkName.java)

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

### Analysis

#### C2 JIT Compiler

... TODO ...

#### Oracle GraalVM JIT Compiler

... TODO ...

#### GraalVM CE JIT Compiler

... TODO ...

### Conclusions

... TODO ...
