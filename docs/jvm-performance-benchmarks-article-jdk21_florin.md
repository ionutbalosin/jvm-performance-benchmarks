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

## MegamorphicMethodCallBenchmark

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

## MethodArgsBusterBenchmark

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
