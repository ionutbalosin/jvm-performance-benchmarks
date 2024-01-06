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
  0x00007fddd74bab60:   mov    0x458(%r15),%r8              ; load the safepoint pool address in %r8
  0x00007fddd74bab67:   test   %eax,(%r8)                   ; safepoint pool
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

The `baseline` benchmark uses single element computations and the JIT compilers might decide to auto-vectorize.
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
number of iterations or used vector size.

#### C2 JIT Compiler

The C2 JIT compiler implements all the Vector API compiler intrinsics required to vectorize the benchmark body. 
It also unrolls the inner while loop of the benchmark by a factor of 4.

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
body and generates similar assembly instructions as the C2 JIT compiler. One difference that could also account for the 
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
The GraalVM CE JIT compiler is not (yet) able to vectorize the benchmark body and falls back to the Java implementation of the Vector API. 

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
        case 6:
          instance.foo();
          break;
        default:
          throw new RuntimeException("Should not reach here.");
      }
    }
  }

  private static class C{1,..,6} implements I {}
  interface I extends I5 {
    private void baz() { foo_5(); }
    default void foo() { baz(); }
  }

  interface I5 extends I4 {
    private void baz_5() { foot_4(); }
    default void foo_5() { baz_5(); }
  }
  ... same pattern for all of the remaining interface declarations
  interface I1 {
    Wrapper wrapper = new Wrapper();
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

The C2 JIT compiler is able to devirtualize and inline through the entire interface call chains at call sites that use up to 
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
one call site `object.method()` has received only `Type1` even though there exists a `Type2` in the type hierarchy, the compiler 
can add a guard that checks the receiver type is `Type1` and then call the `Type1` method directly. 
This is called a monomorphic call site:

```
// High-level pseudo-code of the monomorphic call site optimization
if (receiver instanceof Type1) {
    // fast path
    ((Type1) receiver).method();
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
    ((Type1) receiver).method();
} else if (receiver instanceof Type2) {
    // fast path
    ((Type2) receiver).method();
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
0x00007f41b8758eac:   inc    %ebp                         ; increment the loop induction variable by one
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
    ((Type1) receiver).method();
} else if (receiver instanceof Type2) {
    // fast path
    ((Type2) receiver).method();
} else if (receiver instanceof Type3) {
    // fast path
    ((Type3) receiver).method();
} else if (receiver instanceof Type4) {
    // fast path
    ((Type4) receiver).method();
} else {
    // slow path. Will not deoptimize, but rather use a virtual call for the remaining targets.
    receiver.method();
}
```

The hottest methods in the benchmark `virtual_call[MEGAMORPHIC_5]` are shown below. A single `compute` method 
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
There can be multiple reasons that can affect the compiler optimizations we expect to see.
Some of them are: the size of the generated code, inlining decisions taken 
for the caller and different profile information collected by 
the C1 compiler and the interpreter.

Below is the assembly code for the `virtual_call[MEGAMORPHIC_7]` benchmark:
```
0x00007f9587241de0:   cmp    %r8d,%r11d                   ; compare the loop induction variable against the loop bound
0x00007f9587241de3:   jle    0x00007f9587241edc           ; jump out of the loop if the loop condition is false
0x00007f9587241de9:   mov    0x10(%r10,%r8,4),%r9d        ; load this.instances[i] in %r9
0x00007f9587241dee:   mov    0x8(,%r9,8),%ecx             ; load the klass word of this.instances[i] in %ecx
0x00007f9587241df6:   movabs $0x7f9507000000,%rbx         ; move the metaspace base in %rbx
0x00007f9587241e00:   lea    (%rbx,%rcx,1),%rcx           ; load the address of the klass in %rcx
0x00007f9587241e04:   mov    %r8d,%ebx                    ; move the loop induction variable in %ebx
0x00007f9587241e07:   inc    %ebx                         ; increment the loop induction variable by one
0x00007f9587241e09:   cmp    -0x190(%rip),%rcx            ; compare the klass against one of the expected targets.
                                                          ; the expected klasses are stored in the constant pool 
0x00007f9587241e10:   je     0x00007f9587241e6c           ; if equal jump to the inlined method that increments the Alg1 counter   
0x00007f9587241e16:   cmp    -0x195(%rip),%rcx            ; compare the klass against one of the expected targets
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

The only exception in regard to the performance of the benchmark is with the C2 Compiler in 
`devirtualize_to_monomorphic[MEGAMORPHIC_8]`. The reason the C2 Compiler does not perform similar to the other compilers
and to the `devirtualize_to_monomorphic[MEGAMORPHIC_7]` benchmark is that it switches from using binary search over
switch ranges (as shown in the above assembly snippet of GraalVM CE JIT Compiler) to using a jump table when the number
of targets is higher than seven.

Below is the relevant snippet of the assembly code generated by the C2 JIT Compiler 
for the `devirtualize_to_monomorphic[MEGAMORPHIC_8]` benchmark:
```
0x00007f374063c509:   movslq %r8d,%r9                     ; move the loop induction variable in %r9
0x00007f374063c50c:   mov    0x10(%rdx,%r9,4),%r11d       ; load this.instances[i] in %r11d
0x00007f374063c511:   movsbl 0x10(%rax,%r9,1),%ecx        ; load this.classIndex[i] in %ecx
0x00007f374063c517:   cmp    $0x8,%ecx                    ; check if the classIndex[i] is greater or equal to 8
0x00007f374063c51a:   jae    0x00007f374063c531           ; if true (i.e. default case) jump to default path of the switch statement which in this case deoptimizes
0x00007f374063c51c:   movslq %ecx,%r9                     ; move the classIndex[i] in %r9
0x00007f374063c51f:   shl    $0x3,%r9                     ; compute the full address from the oop
0x00007f374063c523:   movabs $0x7f374063c300,%rbx         ; move the base of the jump table in %rbx
0x00007f374063c52d:   jmp    *(%rbx,%r9,1)                ; jump to the relevant entry in the jump table
```

### Conclusions

In general, the GraalVM CE JIT compiler performs best across all the benchmark configurations, both for megamorphic
and manually split monomorphic call sites. It is then closely followed by the Oracle GraalVM JIT compiler. 

The C2 JIT compiler falls back to virtual calls for call sites with more than two targets. 

All compilers manage to devirtualize and inline when a call site with multiple targets is manually split into monomorphic call sites
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

The C2 JIT Compiler can fail to compile methods that take a large number of arguments whereas this limit seems higher
for the Graal JIT Compilers.
Thankfully, most IDEs will warn the developer way before this threshold is reached.

## NpeControlFlowBenchmark

This benchmark checks how the JIT compiler handles control flow around `null` checks. Explicit null pointer
checks are done by checking against `null`. Implicit null pointer checks are done by surrounding the code with a 
`try {} catch (NullPointerException e) {}` block. Finally, a third option is done through the `Streams` API filter method.

```
  @Benchmark
  public int try_npe_catch() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      try {
        sum += array[i].x;
      } catch (NullPointerException ignored) {
        sink(ignored);
      }
    }
    return sum;
  }

  @Benchmark
  public int if_npe_continue() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      if (array[i] == null) {
        continue;
      }
      sum += array[i].x;
    }
    return sum;
  }

  @Benchmark
  public long stream_filter_npe() {
    return Arrays.stream(array)
        .filter(wrapper -> wrapper != null)
        .map(Wrapper::getX)
        .reduce(0, Integer::sum);
  }
```

The `size` below represents the number of elements in the array. The `nullThreshold` represents the number of `null`
elements in the array. The `null` elements are randomly distributed in the array. A `nullThreshold` of 0 means that
the array does not contain any `null` elements. A `nullThreshold` of 16 means that the array should have on average
half of its elements set to `null`.


Source code: [NpeControlFlowBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark.java)

[![NpeControlFlowBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/NpeControlFlowBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/NpeControlFlowBenchmark.svg?raw=true)

### Analysis of try_npe_catch

All three JIT compilers perform similar in all benchmarks configurations apart from the `try_npe_catch` benchmark.
Therefore, the section below will focus on the `try_npe_catch` benchmark when the `nullThreshold` is 16.

#### C2 JIT Compiler

The C2 JIT Compiler is able to optimize and make use of a cached `NullPointerException` object
when the same exception is thrown multiple times. This avoids allocating a new exception object on the iterations of 
the loop when the `NullPointerException` is thrown. One side effect is that stack traces are not collected
for the cached exception object. This optimization is enabled by default and can be disabled by using the 
`-XX:-OmitStackTraceInFastThrow` flag.

```
0x00007f14a463aaa0:   add    0xc(%r12,%r10,8),%r14d       ; increment the accumulator %r14d with the value of array[i].x
0x00007f14a463aaa5:   mov    0x458(%r15),%r10             ; load safepoint poll address in %r10 
0x00007f14a463aaac:   mov    0x10(%rbp),%r8d              ; load the size filed in %r8d
0x00007f14a463aab0:   inc    %ebx                         ; increment the loop induction variable
0x00007f14a463aab2:   test   %eax,(%r10)                  ; safepoint poll check                  
0x00007f14a463aab5:   cmp    %r8d,%ebx                    ; compare the loop induction variable against size
0x00007f14a463aab8:   jge    0x00007f14a463ab2d           ; jump to return if the loop condition is false
0x00007f14a463aabe:   mov    0x1c(%rbp),%r11d             ; load the array field (oop) in %r11d
0x00007f14a463aac2:   test   %r11d,%r11d                  ; check if the array field is null
0x00007f14a463aac5:   je     0x00007f14a463aa74           ; if null jump to the slow path
0x00007f14a463aac7:   mov    0xc(%r12,%r11,8),%r8d        ; load the array length in %r8d
0x00007f14a463aacc:   cmp    %r8d,%ebx                    ; compare the loop induction variable against the array length
0x00007f14a463aacf:   jae    0x00007f14a463ab43           ; if greater or equal jump to the slow path and throw ArrayIndexOutOfBoundsException
0x00007f14a463aad5:   lea    (%r12,%r11,8),%r10           ; compute the absolute address of the array
0x00007f14a463aad9:   mov    0x10(%r10,%rbx,4),%r10d      ; load the object (oop) at array[i] in %r10d 
0x00007f14a463aade:   xchg   %ax,%ax                      ; alignment nop
0x00007f14a463aae0:   test   %r10d,%r10d                  ; check if the object is null
0x00007f14a463aae3:   jne    0x00007f14a463aaa0           ; if not null jump to the accumulator increment
0x00007f14a463aae5:   cmpb   $0x0,0x40(%r15)              
0x00007f14a463aaea:   jne    0x00007f14a463aba5
0x00007f14a463aaf0:   movabs $0x7ffc01020,%r10            ; load the cached NullPointerException object in %r10
0x00007f14a463aafa:   mov    %r12d,0x14(%r10)             ; clear the `detailedMessage` field of the cached exception object
0x00007f14a463aafe:   mov    %ebx,0x4(%rsp)               ; store the loop induction variable on the stack
0x00007f14a463ab02:   mov    %r14d,(%rsp)                 ; store the accumulator on the stack
0x00007f14a463ab06:   mov    %rbp,%rsi                    ; move the `this` pointer in %rsi 
0x00007f14a463ab09:   movabs $0x7ffc01020,%rdx            ; load the cached NullPointerException object in %rdx 
0x00007f14a463ab13:   call   0x00007f14a40c4380           ; call the `sink` method from the benchmark
0x00007f14a463ab18:   nopl   0x1000288(%rax,%rax,1)       ; alignment nop
0x00007f14a463ab20:   mov    (%rsp),%r14d                 ; load the accumulator from the stack in %r14d
0x00007f14a463ab24:   mov    0x4(%rsp),%ebx               ; load the loop induction variable from the stack in %ebx
0x00007f14a463ab28:   jmp    0x00007f14a463aaa5           ; jump back to the loop beginning
```

Below, is a flamegraph of the `try_npe_catch` benchmark when the `nullThreshold` is 16. The flamegraph is generated
using the [Async-profiler](https://github.com/async-profiler/async-profiler/).

TODO:Florin replace the link with the correct one

https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch-AverageTime-nullThreshold-16-size-262144/flame-cpu-forward.png?raw=true

[![NpeControlFlowBenchmark.svg](/home/gogu/git/jvm-performance-benchmarks/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch-AverageTime-nullThreshold-16-size-262144/flame-cpu-forward.png?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/flamegraph/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch-AverageTime-nullThreshold-16-size-262144/flame-cpu-forward.html?raw=true)

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

Oracle GraalVM JIT Compiler and the GraalVM CE JIT Compiler do not make use of a cached `NullPointerException` object. 
Instead, both compilers allocate a new exception and fill in the stack trace on each iteration of the loop when the 
`NullPointerException` is thrown. This can once again be observed by looking at the generated flamegraph.

TODO:Florin replace the link with the correct one

https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch-AverageTime-nullThreshold-16-size-262144/flame-cpu-forward.png?raw=true

[![NpeControlFlowBenchmark.svg](/home/gogu/git/jvm-performance-benchmarks/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch-AverageTime-nullThreshold-16-size-262144/flame-cpu-forward.png?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/flamegraph/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch-AverageTime-nullThreshold-16-size-262144/flame-cpu-forward.html?raw=true)

Opposed to the C2 JIT Compiler, the GraalVM based JIT compilers will spend additional time inside JVMCI and
then filling in the stack trace.

### Conclusions

All three JIT compilers perform close in all benchmark configurations apart from the `try_npe_catch` benchmark. The reason
the C2 JIT Compiler performs better in this benchmark is because it uses a cached `NullPointerException` object and
avoids filling the stack trace. This optimization is enabled by default and only happens when the same implicit exception 
is thrown multiple times (e.g. in a hot loop). 

## NpeThrowBenchmark

This benchmark tests the implicit vs explicit throw and catch of `NullPointerException` in a hot loop. The caller method
contains a loop that catches the `NullPointerException` thrown by the callee and the callee is never inlined.

An implicit `NullPointerException` is thrown when the code tries to access a field or invoke a method of a `null` object.
An explicit `NullPointerException` is thrown when the code explicitly throws a `NullPointerException` object.

```
  @Benchmark
  public void throw_npe() {
    for (Wrapper object : A) {
      try {
        {implicit, explicit}ThrowNpe(object);
      } catch (NullPointerException e) {
        // swallow exception
      }
    }
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int explicitThrowNpe(Wrapper o) {
    if (o == null) {
      throw new NullPointerException("Oops!");
    }
    return o.x;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int implicitThrowNpe(Wrapper o) {
    return o.x;
  }
```

Source code: [NpeThrowBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark.java)

[![NpeThrowBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/NpeThrowBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/NpeThrowBenchmark.svg?raw=true)

For `threshold:0`, there are no `null` elements in the array. For `threshold:0.5`, on average, half of the elements in
the array are `null`. For `threshold:1`, all elements in the array are `null`.

### Analysis of implicit_throw_npe

All three JIT compilers perform close in performance for all benchmark configurations except for the `implicit_throw_npe`,
especially when the `threshold` is 0.5 or 1.0.

#### C2 JIT Compiler

The C2 JIT Compiler, as in the case of the `NpeControlFlowBenchmark` benchmark, makes use of a cached
`NullPointerException` object and directly calls into the exception handler (`OptoRuntime::handle_exception_C`). 
A side effect of this optimization is that the stack trace is not collected.

Below is the flamegraph generated by the `implicit_throw_npe` benchmark when the `threshold` is 1.0.

TODO:Florin replace the link with the correct one

https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.png?raw=true

[![NpeThrowBenchmark.svg](/home/gogu/git/jvm-performance-benchmarks/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.png?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.html?raw=true)

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

The Oracle GraalVM JIT Compiler and the GraalVM CE JIT Compiler do not make use of a cached `NullPointerException` object.
Instead, both compilers allocate a new exception and fill in the stack trace on each iteration of the loop (when the
threshold is 1.0). This can once again be observed by looking at the generated flamegraph.

TODO:Florin replace the link with the correct one

https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.png?raw=true

[![NpeThrowBenchmark.svg](/home/gogu/git/jvm-performance-benchmarks/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.png?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.html?raw=true)

### Conclusions

All three JIT compilers perform similar in performance when throwing explicit exceptions. 

There is an important performance difference however when throwing implicit exceptions. That is, the C2 JIT Compiler
will avoid allocating a new exception object and filling in the stack trace when the same exception is thrown multiple
times in the hot path.

## SepiaVectorApiBenchmark

This benchmark is similar to the `MandelbrotVectorApiBenchmark` benchmark in that it tests the performance of Project
Panama's Vector API. In this benchmark, the Vector API is used to apply a sepia filter to an input image.

In the `baseline`, the benchmark applies the sepia filter using non-vectorized code (i.e. scalar code that might be
auto-vectorized by the JIT compiler). In the `vectorized` version, the benchmark applies the sepia filter using the 
Vector API. 

Source code: [SepiaVectorApiBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/vector/SepiaVectorApiBenchmark.java)

[![SepiaVectorApiBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/SepiaVectorApiBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/SepiaVectorApiBenchmark.svg?raw=true)

### Analysis of vectorized

All three JIT compilers perform similar in performance in the `baseline`. The focus of this section will therefore
be on the `vectorized` benchmark.

#### C2 JIT Compiler and Oracle GraalVM JIT Compiler 

The C2 JIT Compiler and the Oracle GraalVM JIT Compiler implement the Vector API compiler intrinsics and are able to use
256-bit AVX registers. Therefore, the performance of the benchmark is similar for both JIT compilers.

#### GraalVM CE JIT Compiler

The GraalVM CE JIT Compiler does not fully implement the Vector API compiler intrinsics. It does therefore fallback
to the Java implementation of the Vector API which results in a significant performance degradation. This can be seen
by looking at the hottest methods in the benchmark after inlining.

```
....[Hottest Methods (after inlining)]..............................................................
  58.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.vector.SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 
  19.45%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1194 
  19.03%      jvmci, level 4  jdk.incubator.vector.FloatVector::lambda$compareTemplate$61, version 2, compile id 1203
```

### Conclusions

Both C2 and the Oracle GraalVM JIT compilers are able to vectorize the benchmark body and perform close in performance
and better than the `baseline` benchmark.
The GraalVM CE JIT compiler is not able to fully vectorize the benchmark body and falls back to the Java implementation of the Vector API.

## StackSpillingBenchmark

This benchmark measures the cost of stack spilling. Stack spilling occurs when the register allocator runs out of
available registers and starts using the stack to store intermediate values. Loads/stores from memory are much 
slower than using CPU registers. 

The benchmark method contains a series of field loads followed by a series of fields stores. Normally, the JIT compiler 
is expected to group together loads and stores, resulting in less register pressure. In order to force all the loads to
be grouped before all the stores, the `load_store_spill*` benchmark contains a volatile read after the loads but before 
the stores.

```
  private void load_store_spill() {
    // loads
    int v00 = load0;
    int v01 = load1;
    ... more field loads ...
    int v24 = load24;

    // volatile read to force all the loads to be grouped together before the stores
    non_volatile_value = volatile_value;

    // stores
    store0 = v00;
    store1 = v01;
    ... more field stores ...
    store24 = v24;
  }
```

The C2 JIT compiler has an optimization that first tries to spill onto the FPU registers before spilling onto the stack.
This optimization is enabled by default and can be disabled by using the `-XX:-UseFPUForSpilling` flag.

TODO: Ionut: Regenerate this plot with the updated results

Source code: [StackSpillingBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark.java)

[![StackSpillingBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/StackSpillingBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/StackSpillingBenchmark.svg?raw=true)

### Analysis of load_store_spill_use_fpu

The JIT compilers perform similar in all the benchmarks except for the `load_store_spill_use_fpu` benchmark.
Therefore, the analysis will focus on the `load_store_spill_use_fpu` benchmark.

#### C2 JIT Compiler

The C2 JIT compiler is able to use the FPU registers to spill intermediate values before using the stack. This can be
observed by looking at the generated assembly code. Below is a snippet:

```
0x00007f11bc63ab76:   mov    0x38(%r11),%r10d             ; load field load11 in scratch register %r10d
0x00007f11bc63ab7a:   vmovd  %r10d,%xmm14                 ; move scratch register %r10d in %xmm14
0x00007f11bc63ab7f:   mov    0x3c(%r11),%r10d             ; load field load12 in scratch register %r10d
0x00007f11bc63ab83:   vmovd  %r10d,%xmm15                 ; move scratch register %r10d in %xmm15
0x00007f11bc63ab88:   mov    0x40(%r11),%r11d             ; load field load13 in register %r11d
0x00007f11bc63ab8c:   vmovq  %xmm0,%r10                   ; move `this` pointer in %r10
0x00007f11bc63ab91:   mov    0x44(%r10),%r9d              ; load field load14 in register %r9d
...
0x00007f11bc63ac01:   mov    %r9d,0xa8(%rax)              ; store value of load14 to field store14
0x00007f11bc63ac08:   mov    %r11d,0xa4(%rax)             ; store value of load13 to field store13
0x00007f11bc63ac0f:   vmovd  %xmm15,%r10d                 ; move %xmm15 (field load12) in scratch register %r10d
0x00007f11bc63ac14:   mov    %r10d,0xa0(%rax)             ; store scratch register %r10d to field store12
0x00007f11bc63ac1b:   vmovd  %xmm14,%r10d                 ; move %xmm14 (field load11) in scratch register %r10d
0x00007f11bc63ac20:   mov    %r10d,0x9c(%rax)             ; store scratch register %r10d to field store11 
```

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

The Oracle GraalVM JIT Compiler and the GraalVM CE JIT Compiler do not perform (in this benchmark) the FPU optimization
C2 does. Therefore, both compilers will spill intermediate values onto the stack once they run out of available registers.

```
0x00007fd0c6d82c37:   mov    0x34(%r10),%esi              ; load field load10 in register %esi
0x00007fd0c6d82c3b:   mov    0x38(%r10),%r11d             ; load field load11 in scratch register %r11d
0x00007fd0c6d82c3f:   mov    %r11d,0x4c(%rsp)             ; store value of load11 to stack
0x00007fd0c6d82c44:   mov    0x3c(%r10),%r11d             ; load field load12 in scratch register %r11d
0x00007fd0c6d82c48:   mov    %r11d,0x48(%rsp)             ; store value of load12 to stack
0x00007fd0c6d82c4d:   mov    0x40(%r10),%r11d             ; load field load13 in scratch register %r11d
0x00007fd0c6d82c51:   mov    %r11d,0x44(%rsp)             ; store value of load13 to stack
0x00007fd0c6d82c56:   mov    0x44(%r10),%r11d             ; load field load14 in scratch register %r11d
0x00007fd0c6d82c5a:   mov    %r11d,0x40(%rsp)             ; store value of load14 to stack
...
0x00007fd0c6d82d01:   mov    %esi,0x98(%r10)              ; store value of load10 to field store10
0x00007fd0c6d82d08:   mov    0x4c(%rsp),%r11d             ; load value of load11 from stack in scratch register %r11d 
0x00007fd0c6d82d0d:   mov    %r11d,0x9c(%r10)             ; store value of load11 to field store11
0x00007fd0c6d82d14:   mov    0x48(%rsp),%r11d             ; load value of load12 from stack in scratch register %r11d
0x00007fd0c6d82d19:   mov    %r11d,0xa0(%r10)             ; store value of load12 to field store12
0x00007fd0c6d82d20:   mov    0x44(%rsp),%r11d             ; load value of load13 from stack in scratch register %r11d
0x00007fd0c6d82d25:   mov    %r11d,0xa4(%r10)             ; store value of load13 to field store13
0x00007fd0c6d82d2c:   mov    0x40(%rsp),%r11d             ; load value of load14 from stack in scratch register %r11d
0x00007fd0c6d82d31:   mov    %r11d,0xa8(%r10)             ; store value of load14 to field store14
```

### Conclusions

The C2 JIT Compiler is able to use the FPU registers to spill intermediate values before using the stack. This optimization
does not happen (for this benchmark) in the Oracle GraalVM JIT Compiler and the GraalVM CE JIT Compiler.

## TypeCheckScalabilityBenchmark

This benchmark addresses the scalability issue happening while performing type checks (`instanceof`, `checkcast`, and similar)
against interfaces (so-called secondary super types). The scalability issue is triggered by massive concurrent 
updates to `Klass::_secondary_super_cache` from multiple threads, which in turn causes false sharing with its 
surrounding fields e.g., `Klass::_secondary_supers` and cache line invalidations.

The JDK 21 snippet below shows both fields and what they are used for:
```
class Klass : public Metadata {
  // ...
  // Cache of last observed secondary supertype
  Klass*      _secondary_super_cache;
  // Array of all secondary supertypes
  Array<Klass*>* _secondary_supers;
  // ...
```

Each time a type check is performed, the `Klass::_secondary_super_cache` is checked first. 
If the cache does not contain the type being checked, then the `Klass::_secondary_supers` array is searched for the type. 
If the type is found in the array, then the cache is updated with the type.

 
```
  @Benchmark
  @Threads({1, 2, 3 ,4})
  public boolean is_duplicated_{1, 2, 3, 4}() {
    return isDuplicated(msg);
  }

  private static boolean isDuplicated(Context message) {
    Context actual = Objects.requireNonNull(message);
    return ((InternalContext) actual).isDuplicated();
  }

  public interface Context {
    // some public API
  }

  public interface InternalContext extends Context {
    // internal framework API
    boolean isDuplicated();
  }
  public static class DuplicatedContext implements InternalContext {
    @Override
    public boolean isDuplicated() {
      return true;
    }
  }
  public static class NonDuplicatedContext implements InternalContext {
    @Override
    public boolean isDuplicated() {
      return false;
    }
  }
```

Source code: [TypeCheckScalabilityBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark.java)

[![TypeCheckScalabilityBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TypeCheckScalabilityBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TypeCheckScalabilityBenchmark.svg?raw=true)

### Analysis of is_duplicated

When `typePollution` is false, the benchmark uses a single type `DuplicatedContext` and the compilers are 
able to optimize and avoid checking the cache and the secondary supertypes array. In this case, a guard is used 
that checks if the receiver type is `DuplicatedContext` and then returns `true`.

```
0x00007fda40635fda:   mov    0x10(%rsi),%r10d             ; read oop msg in %r10d
0x00007fda40635fde:   xchg   %ax,%ax                      ; nop
0x00007fda40635fe0:   mov    0x8(%r12,%r10,8),%r8d        ; read klass word of object in %r8d 
0x00007fda40635fe5:   cmp    $0x102acf8,%r8d              ; compare against DuplicatedContext klass
0x00007fda40635fec:   jne    0x00007fda40636006           ; jump to deoptimization stub if not equal
0x00007fda40635fee:   mov    $0x1,%eax                    ; move true to %eax
0x00007fda40635ff3:   add    $0x20,%rsp                   ; pop the stack
0x00007fda40635ff7:   pop    %rbp                         ; pop the frame pointer
0x00007fda40635ff8:   cmp    0x450(%r15),%rsp             ; safepoint poll check
0x00007fda40635fff:   ja     0x00007fda40636034           ; jump to safepoint handler if needed
0x00007fda40636005:   ret                                 ; return
```

When `typePollution` is true, the benchmark uses two types and the compiler is not able to optimize as above. 
In this case, each benchmark iteration will check the cache field, and if a miss occurs, it will iterate through the 
secondary supertypes array. In a multithreaded context, the same cache line is read and written by multiple 
threads, which causes false sharing and cache line invalidations.

This behavior is best observed by looking at the number of L1 data cache misses.

When typePollution is `false`, the number of reported L1 data cache misses is very low.
```
TypeCheckScalabilityBenchmark.is_duplicated_4:L1-dcache-load-misses               ≈ 10⁻⁵  #/op
TypeCheckScalabilityBenchmark.is_duplicated_4:L1-dcache-loads                     4.998   #/op
```

When typePollution is `true`, the number of reported L1 data cache misses is almost two per benchmark iteration.
```
TypeCheckScalabilityBenchmark.is_duplicated_4:L1-dcache-load-misses               1.818   #/op
TypeCheckScalabilityBenchmark.is_duplicated_4:L1-dcache-loads                     25.477  #/op   
```

#### C2 JIT Compiler

The C2 JIT compiler is the slowest when `typePollution` is `true`. One interesting observation is that C2 remains
slower even when the number of threads running is equal to one (no false sharing occurring). That is, the C2 JIT Compiler is 
in general slower at checking the secondary super types array. 
The reason behind this is explained in the `TypeCheckSlowPathBenchmark`. 

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

Overall, the Graal based JIT compilers perform close in performance. The only difference is that the GraalVM CE JIT
Compiler generates additional memory loads for the `klass` word of the object before checking the secondary super types array.
Additionally, the error margins of the two JIT compilers are quite large to draw any clear conclusions.

For reference, below is a snippet of the generated assembly code for the GraalVM CE JIT Compiler:
```
0x00007f82a323d682:   mov    0x8(,%rax,8),%r10d           ; load klass word of the object in %r10d
0x00007f82a323d68a:   movabs $0x7f8227000000,%r11         ; load the base address of the metaspace in %r11
0x00007f82a323d694:   lea    (%r11,%r10,1),%r8            ; compute the address of the klass of the object
0x00007f82a323d698:   movabs $0x7f822802b798,%r11         ; move klass Context to %r11
0x00007f82a323d6a2:   cmp    0x20(%r8),%r11               ; compare the _secondary_super_cache with the klass Context
0x00007f82a323d6a6:   je     0x00007f82a323d6b9           ; if equal jump to the fast path 
0x00007f82a323d6ac:   cmp    $0x102b798,%r10d             ; compare the klass word with Context klass
0x00007f82a323d6b3:   jne    0x00007f82a323d74e           ; if not equal jump to the slow path that iterates through the secondary super types array
0x00007f82a323d6b9:   mov    0x8(,%rax,8),%r10d           ; Additional! load again the klass word of the object in %r10d
0x00007f82a323d6c1:   movabs $0x7f8227000000,%r11         ; Additional! load the base address of the metaspace in %r11
0x00007f82a323d6cb:   lea    (%r11,%r10,1),%r8            ; Additional! compute the address of the klass of the object
0x00007f82a323d6cf:   movabs $0x7f822802b990,%r11         ; Additional! move klass InternalContext to %r11
0x00007f82a323d6d9:   nopl   0x0(%rax)                    ; nop
0x00007f82a323d6e0:   cmp    0x20(%r8),%r11               ; compare the _secondary_super_cache with the klass InternalContext
0x00007f82a323d6e4:   je     0x00007f82a323d6f7           ; if equal jump to the fast path
0x00007f82a323d6ea:   cmp    $0x102b990,%r10d             ; compare klass InternalContext to %r10d
0x00007f82a323d6f1:   jne    0x00007f82a323d785           ; if not equal jump to the slow path that iterates through the secondary super types array
...
```

Compared to the equivalent snippet generated by the Oracle GraalVM JIT Compiler: 
```
0x00007fcda2d7e5e2:   mov    0x8(,%rax,8),%r10d           ; load the klass word of the object in %r10d
0x00007fcda2d7e5ea:   movabs $0x7fcd27000000,%rax         ; load the base address of the metaspace in %rax
0x00007fcda2d7e5f4:   lea    (%rax,%r10,1),%r11           ; compute the address of the klass of the object
0x00007fcda2d7e5f8:   movabs $0x7fcd2802b328,%rax         ; move klass Context to %rax
0x00007fcda2d7e602:   cmp    0x20(%r11),%rax              ; compare the _secondary_super_cache with the klass Context
0x00007fcda2d7e606:   je     0x00007fcda2d7e619           ; if equal jump to the fast path
0x00007fcda2d7e60c:   cmp    $0x102b328,%r10d             ; compare the klass word with Context klass
0x00007fcda2d7e613:   jne    0x00007fcda2d7e66e           ; if not equal jump to the slow path that iterates through the secondary super types array
0x00007fcda2d7e619:   movabs $0x7fcd2802b520,%rax         ; move klass InternalContext to %rax
0x00007fcda2d7e623:   cmp    0x20(%r11),%rax              ; compare the _secondary_super_cache with the klass InternalContext
0x00007fcda2d7e627:   je     0x00007fcda2d7e63a           ; if equal jump to the fast path
0x00007fcda2d7e62d:   cmp    $0x102b520,%r10d             ; compare the klass word with InternalContext klass
0x00007fcda2d7e634:   jne    0x00007fcda2d7e6a5           ; if not equal jump to the slow path that iterates through the secondary super types array
...
```

### Conclusions

This scalability issue is not specific to a particular JIT compiler, although some differences can be observed
in the results.

This issue is already discussed and reported in [JDK-8180450](https://bugs.openjdk.org/browse/JDK-8180450). A temporary
backoff mechanism is proposed in [JDK-8316180](https://bugs.openjdk.org/browse/JDK-8316180) and implemented in
[PR-15718](https://github.com/openjdk/jdk/pull/15718).
This issue is also described in [Francesco Nigro’s post](https://redhatperf.github.io/post/type-check-scalability-issue/)
and the [Netflix blog post](https://netflixtechblog.com/seeing-through-hardware-counters-a-journey-to-threefold-performance-increase-2721924a2822).

The `TypeCheckSlowPathBenchmark` benchmark further investigates the performance of the slow path
that iterates through the secondary super types array when false sharing is not occurring.

## TypeCheckSlowPathBenchmark

This benchmark checks the slow path of `instanceof` type checks using multiple secondary super types (i.e., interfaces)
and always takes the slow path by iterating over the secondary super types array.

Compared to the `TypeCheckScalabilityBenchmark`, this benchmark does not cause false sharing. It only compares 
the performance of the slow path of type checking across the different JITs.

```
  @Benchmark
  public boolean instanceof_type_check() {
    return closeNotAutoCloseable(obj);
  }

  public static boolean closeNotAutoCloseable(Object o) {
    // it searches through the secondary supers for a type match
    // but does not find one since "o" is not an "AutoCloseable" type
    // "o" is actually of type "ManySecondarySuperTypes_*"
    if (o instanceof AutoCloseable) {
      try {
        ((AutoCloseable) o).close();
        return true;
      } catch (Exception ignore) {
        return false;
      }
    } else {
      // it always takes this slow path
      return false;
    }
  }

  private enum SomeCloseable implements AutoCloseable {
    Instance;

    @Override
    public void close() throws Exception {}
  }

  private enum ManySecondarySuperTypes_{16, 32, 64, 128, 256} {
      implements I1, I2, I3, ... I{16, 32, 64, 128, 256} {
    Instance;
  }
```

Source code: [TypeCheckSlowPathBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark.java)

[![TypeCheckSlowPathBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TypeCheckSlowPathBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TypeCheckSlowPathBenchmark.svg?raw=true)

### Analysis of instanceof_type_check

For a low number of secondary super types `(16, 32, 64)`, the GraalVM JIT Compilers perform similarly and are faster than C2 JIT Compiler. 
The performance gap between the Graal and C2 compilers decreases however as the number of secondary super types 
increases.

#### C2 JIT Compiler

The C2 JIT compiler loops through the secondary super types array using a `repnz scas` [instruction](https://www.felixcloutier.com/x86/rep:repe:repz:repne:repnz#description).

```
 0.17% 0x00007f1e7863b2a6:   mov    0x28(%rsi),%rdi        ; load the secondary_supers array in %rdi 
       0x00007f1e7863b2aa:   mov    (%rdi),%ecx            ; load the size of the array in %ecx
 0.46% 0x00007f1e7863b2ac:   add    $0x8,%rdi              ; skip the length field
       0x00007f1e7863b2b0:   test   %rax,%rax              ; set the zero flag to 0
83.32% 0x00007f1e7863b2b3:   repnz scas %es:(%rdi),%rax    ; scan the array for the expected klass (AutoCloseable)
 6.34% 0x00007f1e7863b2b6:   jne    0x00007f1e7863b2c0     ; if not found jump to the false branch 
       0x00007f1e7863b2bc:   mov    %rax,0x20(%rsi)        ; update the secondary_super_cache with the klass found
 1.56% 0x00007f1e7863b2c0:   je     0x00007f1e7863b285     ; jump to the true branch of the type check
       0x00007f1e7863b2c2:   xor    %eax,%eax
       0x00007f1e7863b2c4:   jmp    0x00007f1e7863b293     ; jump to the false branch of the type check
```

In modern CPUs, the `repnz (scas)` class of instructions can have a large setup overhead and therefore be slower than a 
loop for a small number of elements. The performance of this class of instructions very much depends on the vendor and 
CPU microarchitecture.

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

Both GraalVM JIT Compilers iterate over the secondary super types array using a loop:

```
 0.30% 0x00007f342f2470e0:   mov    %ecx,%ebx               ; move the loop counter in %ebx
       0x00007f342f2470e2:   shl    $0x3,%ebx               ; multiply the loop counter by 8
44.80% 0x00007f342f2470e5:   lea    0x8(%rbx),%ebx          ; skip the length field; compute the byte offset of the element in the secondary_supers array in %ebx
       0x00007f342f2470e8:   movslq %ebx,%rbx               ; sign extend to 64 bits
 0.34% 0x00007f342f2470eb:   mov    (%r8,%rbx,1),%rbx       ; load the klass from the secondary_supers array at index %ecx
 0.47% 0x00007f342f2470ef:   cmp    %rbx,%r10               ; compare the klass with the expected klass (AutoCloseable)
       0x00007f342f2470f2:   je     0x00007f342f247106      ; if equal jump and store the klass in the secondary_super_cache
44.10% 0x00007f342f2470f8:   inc    %ecx                    ; increment the loop counter
       0x00007f342f2470fa:   cmp    %ecx,%r9d               ; compare the loop counter with the length of the secondary_supers array
       0x00007f342f2470fd:   jg     0x00007f342f2470e0      ; if greater jump to the beginning of the loop 
 0.33% 0x00007f342f2470ff:   mov    $0x0,%eax               ; move false to %eax
 0.79% 0x00007f342f247104:   jmp    0x00007f342f24709c      ; jump to not found label
       0x00007f342f247106:   mov    %r10,0x20(%r11)         ; update the secondary_super_cache with the klass found
       0x00007f342f24710a:   jmp    0x00007f342f24708b      ; match found so jump to found label
```

### Conclusions

The C2 JIT Compiler can be slower than the GraalVM JIT Compilers when iterating through the secondary super types array (i.e.
performing `instanceof` checks), especially when the number of secondary super types is not very large. 

One of the reasons is that the C2 JIT Compiler uses the `repnz scas` instruction which can be slow on modern x86 architectures. 
This issue is discussed in the [JDK mailing list](https://mail.openjdk.org/pipermail/hotspot-runtime-dev/2020-August/041056.html)
and in [JDK-8251318](https://bugs.openjdk.org/browse/JDK-8251318).

# Miscellaneous

This set of benchmarks is dedicated to larger programs using high-level Java APIs (e.g., stream, lambda, fork-join, etc.). It is created to complement the existing JIT benchmarks with another class of benchmarks.

## Miscellaneous Benchmarks

The miscellaneous benchmarks are measured in [average time per operation](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/annotations/Mode.java#L52), which is the score reported by the JMH.

## DijkstraShortestPathBenchmark

Dijkstra's algorithm is an algorithm for finding the shortest paths between a random source node and all other nodes in 
a graph.
The benchmark uses two alternative approaches, each using different data structures to represent the graph, as follows:
- an adjacency matrix
- an adjacency list with a binary heap (min heap)

Adjacency Matrix: This implementation uses an adjacency matrix representation of the graph combined with a standard priority queue (binary heap).
The adjacency matrix represents the graph as a 2D array, where the value in the matrix indicates the weight of the edge between two nodes.
This approach is suitable for dense graphs but can be inefficient for sparse graphs due to its space usage.
The time complexity is O(V^2) due to the cost of accessing the matrix for each node during relaxation.

Adjacency List with Binary Heap (Min Heap): This implementation uses a standard binary heap (min heap) combined with an adjacency list representation of the graph.
The binary heap is implemented manually using a list of queues (buckets).
It can offer better performance than binary heaps for dense graphs with small and non-negative edge weights.
Its time complexity is O((V + E) log V).

Note: these implementations offer different trade-offs in terms of time complexity, space efficiency, and performance characteristics.
The best choice of implementation depends on the specific graph structure, the distribution of edge weights, etc.

Source code: [DijkstraShortestPathBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/dijkstrashortestpath/DijkstraShortestPathBenchmark.java)

[![DijkstraShortestPathBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/DijkstraShortestPathBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/DijkstraShortestPathBenchmark.svg?raw=true)


## GameOfLifeBenchmark

Conway's Game of Life, is a cellular automaton devised by mathematician John Conway in 1970.
It is a mathematical "zero-player" game, meaning that its evolution is determined by its initial state, with no further input required.

The Game of Life is played on a 2D grid of cells, where each cell can be in one of two states: alive or dead (0 or 1).
The game progresses through generations, with the state of each cell in a generation being determined by the state of its neighboring cells
in the previous generation according to a set of rules. These rules are based on the concept of birth, death, and survival:
- Birth: A dead cell with exactly three live neighbors becomes a live.
- Death: A live cell with fewer than two live neighbors (underpopulation) or more than three live neighbors (overpopulation) becomes a dead cell.
- Survival: A live cell with two or three live neighbors remains alive.

Despite its simple rules, the Game of Life can produce complex and intricate patterns, including gliders (moving structures),
oscillators (repeating patterns), and even structures that can act as logic gates and memory cells.

The benchmark involves several alternative strategies:
- Game of Life with Functional Programming
- Game of Life with Imperative Style


Source code: [GameOfLifeBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/gameoflife/GameOfLifeBenchmark.java)

[![GameOfLifeBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/GameOfLifeBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/GameOfLifeBenchmark.svg?raw=true)


## HuffmanCodingBenchmark

Huffman encoding is an algorithm devised by David A. Huffman of MIT in 1952 for compressing text data to make a file
occupy a smaller number of bytes. This relatively simple compression algorithm is powerful enough that variations of it
are still used today in computer networks, fax machines, modems, HDTV, and other areas.

The steps involved in Huffman encoding a given text source file into a destination compressed file are:
- count frequencies: examine a source file's contents and count the number of occurrences of each character
- build encoding tree: build a binary tree with a particular structure, where each node represents a character
and its count of occurrences in the file. A priority queue is used to help build the tree along the way.
- build encoding map: traverse the binary tree to discover the binary encodings of each character
- encode data: re-examine the source file's contents, and for each character, output the encoded binary version of
that character to the destination file.


Source code: [HuffmanCodingBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/huffmancoding/HuffmanCodingBenchmark.java)

[![HuffmanCodingBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/HuffmanCodingBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/HuffmanCodingBenchmark.svg?raw=true)


## KnapsackBenchmark

The knapsack problem is a classic optimization problem in computer science and combinatorial optimization.
Given a set of items, each with a value and weight, and a knapsack with a maximum weight capacity,
the objective is to select items to maximize the total value while ensuring that the sum of their weights does not exceed the knapsack's capacity.

The knapsack problem has two main variations:
 - 0/1 Knapsack Problem: each item can be either included (0/1 choice) or excluded from the knapsack.
An item cannot be partially included. This means you can either take an item entirely or leave it out.
 - Fractional Knapsack Problem: there can take fractions of items, allowing to include parts of an item based on its weight.

Some important notes regarding the knapsack problem:
- The 0/1 Knapsack problem is commonly tackled using dynamic programming, owing to its complex nature.
- The Fractional Knapsack problem is typically solved through a greedy algorithm. This is mainly because a 0/1 version of the Fractional Knapsack problem doesn't exist.

The benchmark involves several alternative strategies:
- Knapsack with Dynamic Programming (for the 0/1 version)
- Knapsack with Greedy Programming (for the 0/1 version)
- Fractional Knapsack (with Greedy Programming)


Source code: [KnapsackBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/KnapsackBenchmark.java)

[![KnapsackBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/GameOfLifeBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/KnapsackBenchmark.svg?raw=true)


## PalindromeBenchmark

Iterates through a list of Strings read from a file and checks, for each String, if it is a palindrome.
The benchmark uses a few alternative approaches:
- trampolines
- recursive
- iterative

The trampoline pattern is used for implementing algorithms recursively but without
blowing the stack (as an alternative to recursive functions).
A trampoline is an iteration applying a list of functions, where each function returns
the next function to be called.

The result (i.e., number of palindromes) is compared against a known constant number
to be sure the computation is not wrong.


Source code: [PalindromeBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/PalindromeBenchmark.java)

[![PalindromeBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/PalindromeBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/PalindromeBenchmark.svg?raw=true)


## PopulationVarianceBenchmark

This benchmark generates a population of different ages and then calculates the age variation.
Population variance is the average of the distances from each data point in a particular population
to the mean squared. It indicates how data points spread out in the population.
Population variance is an important measure of dispersion used in statistics.


Source code: [PopulationVarianceBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/PopulationVarianceBenchmark.java)

[![PopulationVarianceBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/PopulationVarianceBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/PopulationVarianceBenchmark.svg?raw=true)


## PrimesBenchmark

Calculates the count of prime numbers up to a specified threshold (e.g., N).
The benchmark employs several alternative methods:
- Sieve of Eratosthenes
- Trial division (i.e., checking if a number is prime by dividing it by all possible divisors up to the square root of the number.)
- Miller-Rabin primality test

The resulting count of prime numbers is compared against the Prime Number Theorem to ensure the accuracy of the computation.


Source code: [PrimesBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/prime/PrimesBenchmark.java)

[![PrimesBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/PrimesBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/PrimesBenchmark.svg?raw=true)


## PublicationStatisticsBenchmark

This benchmark extensively uses the Collectors/Streams API to perform a bunch of operations on a list of publications and their authors
producing different final results (i.e., statistics), including:
- the year(s) with the most publications
- the number of publications for each author
- the author who published the most articles
- the authors who have never collaborated with the same publication twice
- the year of the first publication
- the year of the last publication
- the publication with the most authors (for each year).
- the pair of authors who published the most publications together (for each year).

The list of publications is randomly generated at the beginning of the benchmark and consists of 100,000 items,
with each publication having a maximum of 9 authors. All of these publications are generated between the years 1900 and 2000,
and in total, they have around 100 distinct types.
The total number of authors is 1,000 (which means, on average, every author could potentially write around 100 articles).


Source code: [PublicationStatisticsBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatisticsBenchmark.java)

[![PublicationStatisticsBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/PublicationStatisticsBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/PublicationStatisticsBenchmark.svg?raw=true)

## WordFrequencyBenchmark

Computes the word frequencies/occurrences from a text file.
The benchmark uses a few alternative approaches:
- iterative
- parallel streams
- pattern streams

Source code: [WordFrequencyBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/wordfrequency/WordFrequencyBenchmark.java)

[![WordFrequencyBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/WordFrequencyBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/WordFrequencyBenchmark.svg?raw=true)
