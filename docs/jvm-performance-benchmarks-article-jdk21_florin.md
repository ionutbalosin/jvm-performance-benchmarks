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

... TODO ...

Source code: [TODOBenchmarkName.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/TODOBenchmarkName.java)

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

### Analysis

#### C2 JIT Compiler

... TODO ...

#### Oracle GraalVM JIT Compiler

... TODO ...

#### GraalVM CE JIT Compiler

... TODO ...

### Conclusions

... TODO ...

## MandelbrotVectorApiBenchmark

... TODO ...

Source code: [TODOBenchmarkName.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/TODOBenchmarkName.java)

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

### Analysis

#### C2 JIT Compiler

... TODO ...

#### Oracle GraalVM JIT Compiler

... TODO ...

#### GraalVM CE JIT Compiler

... TODO ...

### Conclusions

... TODO ...

## MegamorphicInterfaceCallBenchmark

... TODO ...

Source code: [TODOBenchmarkName.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/TODOBenchmarkName.java)

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

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

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

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

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

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

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

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

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

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

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

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

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

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

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

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

[![TODOBenchmarkName.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-17/x86_64/plot/TODOBenchmarkName.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/TODOBenchmarkName.svg?raw=true)

### Analysis

#### C2 JIT Compiler

... TODO ...

#### Oracle GraalVM JIT Compiler

... TODO ...

#### GraalVM CE JIT Compiler

... TODO ...

### Conclusions

... TODO ...
