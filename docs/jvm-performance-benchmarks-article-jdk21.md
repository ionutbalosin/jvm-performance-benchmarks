# JVM Performance Comparison for JDK 21

## Authors

**Ionut Balosin**
- Website: [www.ionutbalosin.com](https://www.ionutbalosin.com)
- X: [@ionutbalosin](https://twitter.com/ionutbalosin)
- GitHub: [@ionutbalosin](https://github.com/ionutbalosin)
- Mastodon: [@ionutbalosin](https://mastodon.social/@ionutbalosin)

**Florin Blanaru**
- X: [@gigiblender](https://twitter.com/gigiblender)
- GitHub: [@gigiblender](https://github.com/gigiblender)
- Mastodon: [@gigiblender](https://mastodon.online/@gigiblender)

# Content

- [Context](#context)
- [SetUp](#setup)
- [JIT Compiler](#jit-compiler)
    - [Benchmarks](#jit-benchmarks)
    - [Geometric Mean](#jit-geometric-mean)
- [API](#api)
    - [Benchmarks](#api-benchmarks)
    - [Geometric Mean](#api-geometric-mean)
- [Miscellaneous](#miscellaneous)
    - [Benchmarks](#miscellaneous-benchmarks)
    - [Geometric Mean](#miscellaneous-geometric-mean)
- [Overall Geometric Mean](#overall-geometric-mean)
- [Overall Conclusions](#overall-conclusions)
- [Final Thoughts](#final-thoughts)
- [Acknowledgements](#acknowledgements)
- [References](#references)

# Context

The current article describes a series of Java Virtual Machine (JVM) benchmarks with a primary focus on top-tier Just-In-Time (JIT) compilers, such as C2 JIT, and Graal JIT.  The benchmarks are structured in three distinct (artificial) categories:
1. **Compiler**: This category is dedicated to assessing JIT compiler optimizations by following specific handwritten code patterns. It assesses common optimizations found in compilers, including inlining, loop unrolling, escape analysis, devirtualization, null-check elimination, range-check elimination, dead code elimination, vectorization, etc.
2. **Api**: This category includes benchmarks targeting common APIs from both the Java Platform, Standard Edition (Java SE) (e.g., `java.io`, `java.nio`, `java.net`, `java.security`, `java.util`, `java.text`, `java.time`, etc.) and the Java Development Kit (JDK) (e.g., `jdk.incubator.vector`, etc.).
3. **Miscellaneous**: This category covers a broader spectrum of classical programs (e.g., Dijkstra's shortest path, factorial, Fibonacci, Game of Life, image rotation, knapsack problem, N queens, palindrome, Huffman coding/encoding, Lempel-Ziv-Welch compression, etc.) using different techniques (e.g., dynamic programming, greedy algorithms, backtracking, divide and conquer, etc.), various programming styles (e.g., iterative, functional), and high-level Java APIs (e.g., streams, lambdas, fork-join, collections, etc.).

The categorization is for informative purposes to better organize and direct the focus of our benchmarks, ranging from low-level (compiler benchmarks) to high-level (API and Miscellaneous) benchmarks.

For this report we aggregated in total a number of **1112 benchmark runs**, including all three categories.

The list of JIT compilers included (comprising the JVM and architecture) is as follows:

JIT               | JVM                    | Arcitecture 
------------------|------------------------|----------------
C2 (Server) JIT   | OpenJDK 21             | x86_64, arm64         
Graal JIT         | GraalVM CE 21+35.1     | x86_64, arm64      
Graal JIT         | Oracle GraalVM 21+35.1 | x86_64, arm64      

This article is based on the [jvm-performance-benchmarks](https://github.com/ionutbalosin/jvm-performance-benchmarks) project. For any further information (not explicitly mentioned here) including the OS tuning settings, the deliberate decision on choosing these JVMs and/or specific JDKs, etc., please check out the repository.

> The reference architecture (and, subsequently, the benchmarks analysis) for this article is x86_64, and arm64 is only included in the geometric mean score section for comparison.

In this article, we present benchmarks and a comparison for JDK 21. For information related to JDK 17, please refer to our previous article [JVM Performance Comparison for JDK 17](https://ionutbalosin.com/2023/03/jvm-performance-comparison-for-jdk-17).

# SetUp

- Java Development Kit (JDK) 21
- Java Microbenchmark Harness (JMH) v1.37
- Each benchmark uses 5x10s warm-up iterations, 5x10s measurement iterations, and 5 JVM forks, for both single-threaded and multi-threaded workloads (depending on the test case)
- The benchmarks were run on the below machines:
    1. Apple MacBook Pro, M1 Chip 10-Core, 16-Core Neural Engine, 32GB RAM, macOS Ventura 13.6.1
    2. Dell XPS 15 7590, Intel Core i7-9750H 6-Core, 32GB RAM, Ubuntu 20.04 LTS
- To eliminate potential sources of performance non-determinism, the below OS tunings were performed on the Intel machine:
    1. Disabled the _turbo-boost_ mode
    2. Set CPU governor to _performance_
    3. Disabled CPU _hyper-threading_

# JIT Compiler

This section presents the results obtained from running the JIT benchmarks. As mentioned earlier, these benchmarks primarily target different optimizations commonly found in compilers. 
For the benchmarks that show significant differences, we provide a comprehensive analysis, including optimized generated assembly code, flame graphs, etc.

## JIT Benchmarks

The JIT benchmarks are measured in [average time per operation](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/annotations/Mode.java#L52), which is the score reported by the JMH.

## InfrastructureBaselineBenchmark

This benchmark is used as a baseline (i.e., a preliminary check) to assess the infrastructure overhead for the code to measure.
Since no magical infrastructures are incurring no overhead, it is essential to know what default overheads might occur in our setup.

It measures the calls performance of empty methods (w/ and w/o explicit inlining) but also the performance of returning an object versus consuming it via black holes. All of these mechanisms are used by the benchmark suite.

This is particularly useful in case of a comparison between different types of JVMs, and it should be run before any other real benchmark to check the default costs.

> A comparison between different JVMs might not be further relevant unless, at least, the baseline is the same.

Source code: [InfrastructureBaselineBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark.java)

[![InfrastructureBaselineBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/InfrastructureBaselineBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/InfrastructureBaselineBenchmark.svg?raw=true)

### Conclusions

The results are identical. This increases the confidence in the benchmark results, across the selected JVMs.

## ArithmeticCanonicalizationBenchmark

This benchmark checks whether the compiler performs arithmetic canonicalization, a process that involves transforming arithmetic 
expressions into a canonical form. This transformation includes restructuring expressions to a common, simplified form. 
Canonical forms are easier to analyze and optimize, potentially leading to better code generation and improved performance.

```
  @Param({"true"})
  private boolean isHeavy;

  // a big prime number
  @Param({"179426549"})
  private long value;

  @Benchmark
  public long add() {
    return doAdd();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private long doAdd() {
    long val = this.value;
    return isHeavy
        ? val + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val // i.e., 64 additions
        : val;
  }
```

Source code: [ArithmeticCanonicalizationBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/ArithmeticCanonicalizationBenchmark.java)

[![ArithmeticCanonicalizationBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/ArithmeticCanonicalizationBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/ArithmeticCanonicalizationBenchmark.svg?raw=true)

### Analysis of add

The analysis below pertains to the `add` method, which is more interesting due to the highest differences in performance.

#### C2 JIT Compiler

The C2 JIT compiler performs a repetitive addition operation, summing all the values together iteratively.

```
  doAdd()
  
  0x7fd710638cba:   mov    0x10(%rsi),%r10              ; get field 'value' into r10
  0x7fd710638cbe:   movzbl 0xc(%rsi),%r8d               ; get field 'isHeavy' as a zero-extended byte into r8d
  0x7fd710638cc3:   test   %r8d,%r8d                    ; test if 'isHeavy' is false
  0x7fd710638cc6:   je     0x7fd710638d9d               ; jump if 'isHeavy' is false
  0x7fd710638ccc:   lea    (%r10,%r10,1),%rax           ; rax = r10 * 2
  0x7fd710638cd0:   add    %r10,%rax                    ; rax = rax + r10
  ...
  <-- Adds r10 ('value') to rax repetitively 60 times -->
  ...
  0x7fd710638d87:   add    %r10,%rax
  ...
  0x7fd710638d9c:   ret
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler replaces the additions with the shift operation, which is more efficient.

```
  doAdd()
  
  0x7f99e2d80e4a:   mov    0x10(%rsi),%rax              ; get field 'value' into r10
  0x7f99e2d80e4e:   shl    $0x6,%rax                    ; shift rax left by 6 bits (rax = rax << 6)
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler performs the same optimization as the Oracle GraalVM JIT compiler.

### Conclusions

In the case of the `add` benchmark, the GraalVM compilers (Oracle GraalVM JIT and GraalVM CE JIT) trigger strength reduction for additions, unlike the C2 JIT compiler, which adds the values individually.

## CanonicalizeInductionVariableBenchmark

This benchmark checks if the compiler is capable of simplifying loops, transforming the induction variable and computations
that depends on it into a simpler form. In some cases, the loop can be completely removed and the body of the loop can
be replaced with a constant value.

Ideally, a compiler should be able to optimize `canonicalize` and `baseline` to a form that is equivalent to `manual_canonicalize`.

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

Source code: [CanonicalizeInductionVariableBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/CanonicalizeInductionVariableBenchmark.java)

[![CanonicalizeInductionVariableBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/CanonicalizeInductionVariableBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/CanonicalizeInductionVariableBenchmark.svg?raw=true)

### Analysis of baseline

The body of the loop in the `baseline` method is empty and the only side effect of the loop is the increment of the induction
variable that is then returned by the benchmark method. Therefore, it should be safe for the compiler to remove the loop
and replace the return value with a constant value (i.e. `reducedLength`).

#### C2 JIT Compiler and Oracle GraalVM JIT Compiler

Both C2 and the Oracle GraalVM JIT compilers are able to remove the loop and replace the return value with a constant.

```
  0x7f8f80757bba:   mov    $0x400000,%eax               ; move the constant value into the return register
  0x7f8f80757bbf:   add    $0x10,%rsp
  0x7f8f80757bc3:   pop    %rbp
  0x7f8f80757bc4:   cmp    0x450(%r15),%rsp             ; {poll_return}
  0x7f8f80757bcb:   ja     0x7f8f80757bd2
  0x7f8f80757bd1:   ret                                 ; return the constant value (eax)
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler is able to compute the return value of the function and replace it with a constant. It fails
however to remove the loop, resulting in an empty bodied loop whose induction variable, `rax`, is overwritten.

``` 
  ↗ 0x7f05a74bbce0:   inc    %rax                         ; increment the induction variable
  │ 0x7f05a74bbce3:   cmp    $0x400000,%rax               ; compare the induction variable with the loop bound
  ╰ 0x7f05a74bbcea:   jne    0x7f05a74bbce0               ; jump back to the increment instruction if loop condition is true
    0x7f05a74bbcec:   mov    $0x400000,%rax               ; overwrite the induction variable with the loop result
    0x7f05a74bbcf3:   add    $0x18,%rsp
    0x7f05a74bbcf7:   cmp    0x450(%r15),%rsp             ; {poll_return}
    0x7f05a74bbcfe:   ja     0x7f05a74bbd12
    0x7f05a74bbd04:   ret                                 ; return the constant value (rax)
```

### Analysis of canonicalize
The loop in the `canonicalize` method is slightly more complex than the one in the `baseline` method. The loop condition
requires the computation of the square of the induction variable and the loop body increments the method result. All
three JIT compilers are not able to remove or simplify the loop.

```
  ↗ 0x7fddd74bab60:   mov    0x458(%r15),%r8              ; load the safepoint pool address in %r8
  │ 0x7fddd74bab67:   test   %eax,(%r8)                   ; safepoint pool
  │ 0x7fddd74bab6a:   inc    %r11                         ; increment the loop result variable
  │ 0x7fddd74bab6d:   inc    %r10                         ; increment the induction variable
  │ 0x7fddd74bab70:   mov    %r10,%r8                     ; perform the loop condition computation
  │ 0x7fddd74bab73:   imul   %r10,%r8                     ; ^ 
  │ 0x7fddd74bab77:   cmp    %r8,%rax                     ; compare against the loop bound
  ╰ 0x7fddd74bab7a:   jg     0x7fddd74bab60               ; jump back to the loop start if loop condition is true
    0x7fddd74bab7c:   mov    %r11,%rax                    ; place the result in the return register
```

### Conclusions

The C2 and Oracle GraalVM JIT compilers are able to remove the loop and replace the return value with a constant in the
`baseline` case. The GraalVM CE JIT compiler is able to compute the return value but fails to remove the unnecessary loop.

In the `canonicalize` case, all three JIT compilers fail to remove the loop and show close performance results.

## DeadArgumentEliminationBenchmark

This benchmark assesses the removal of arguments that are directly dead, as well as arguments that are passed into function calls as dead arguments of other functions.

The inliner plays a fundamental role as it aids in the identification of whether the arguments passed to the inlined function are utilized within the function's body or not.

```
  private final int DEPTH = 8;

  @Benchmark
  public int recursive_method_calls() {
    // allocate 'dead argument' objects
    final Object obj1 = new Object();
    final Object obj2 = new Object();
    final Object obj3 = new Object();
    final Object obj4 = new Object();
    final Object obj5 = new Object();
    final Object obj6 = new Object();
    final Object obj7 = new Object();
    final Object obj8 = new Object();

    // only the defaultValue will 'survive'
    return recursiveMethod(DEPTH, defaultValue, obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8);
  }
  
  private int recursiveMethod(
      int depth, int aValue, Object obj1, Object obj2, Object obj3, 
      Object obj4, Object obj5, Object obj6, Object obj7, Object obj8) {
    if (depth == 0) {
      return aValue;
    }
    return recursiveMethod(depth - 1, aValue, obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8);
  }  
```

Source code: [DeadArgumentEliminationBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadArgumentEliminationBenchmark.java)

[![DeadArgumentEliminationBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DeadArgumentEliminationBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DeadArgumentEliminationBenchmark.svg?raw=true)

### Analysis of recursive_method_calls

The analysis below pertains to the `recursive_method_calls` method, which is more interesting due to the highest differences in performance.

#### C2 JIT Compiler

The C2 JIT compiler is capable of devirtualizing `recursiveMethod` virtual calls and performs inlining up to a depth of 2.

```
  recursive_method_calls()
  
  0x7fe3fc4f8635:   mov    0x10(%rsi),%ecx           ; move field 'defaultValue' to ecx, the 2nd parameter
  0x7fe3fc4f8638:   mov    $0x6,%edx                 ; move 0x6 to edx ('depth'), the 1st parameter
  ...
  <-- stack manipulation operations for the other parameters -->
  ...
  0x7fe3fc4f866b:   call   0x7fe3fc4f7fc0            ; <--- call to recursiveMethod two layers deep
                                                     ; invokevirtual recursiveMethod
                                                     ; - DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
                                                     ; - DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
                                                     ; - DeadArgumentEliminationBenchmark::recursive_method_calls@89 (line 80)
                                                     ; {optimized virtual_call}
```

```
  recursiveMethod()
  
     0x7fe3fc4f7fc0:   mov    %eax,-0x14000(%rsp)
     ...
     0x7fe3fc4f7fda:   test   %edx,%edx            ; test if 'depth' is zero
   ╭ 0x7fe3fc4f7fdc:   je     0x7fe3fc4f803b       ; jump if zero
   │ 0x7fe3fc4f7fe5:   add    $0xfffffffe,%edx     ; add -2 (in two's complement) to edx, effectively decrementing it by 2
   │ ...
   │ <-- stack manipulation operations for the other parameters -->
   │ ...
   │ 0x7fe3fc4f801b:   call   0x7fe3fc4f7fc0       ; <--- recursive call to itself
   │                                               ; invokevirtual recursiveMethod
   │                                               ; - DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
   │                                               ; - DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
   │                                               ; {optimized virtual_call}
   │ ...
  ↗│ 0x7fe3fc4f8028:   add    $0x40,%rsp
  ││ ...
  ││ 0x7fe3fc4f803a:   ret
  ││ ...
  │↘ 0x7fe3fc4f803b:   mov    %ecx,%eax            ; eax = ecx ('defaultValue')
  ╰  0x7fe3fc4f8041:   jmp    0x7fe3fc4f8028
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler inlines the `recursiveMethod`, eliminates dead arguments and returns the `defaultValue` directly.

```
  0x7fccbad9ce3a:   mov    0x10(%rsi),%eax         ; move field 'defaultValue' to eax
  ...
  0x7fccbad9ce4e:   ret
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler, akin to the C2 JIT compiler, is capable of devirtualizing `recursiveMethod` virtual calls and performs inlining up to a depth of 6.

```
  recursive_method_calls()
  
  0x7fb11718e9b3:   mov    0x10(%r10),%ecx          ; move field 'defaultValue' to ecx, the 2nd parameter
  ...
  0x7fb11718e9bd:   mov    $0x2,%edx                ; move 0x2 to edx ('depth'), the 1st parameter
  ...
  <-- stack manipulation operations for the other parameters -->
  ...           
  0x7fb11718e9e3:   call   0x7fb11718e240           ; <--- call to recursiveMethod six layers deep
                                                    ; invokevirtual recursiveMethod
                                                    ; - DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
                                                    ; - DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
                                                    ; - DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
                                                    ; - DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
                                                    ; - DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
                                                    ; - DeadArgumentEliminationBenchmark::recursiveMethod@26 (line 129)
                                                    ; - DeadArgumentEliminationBenchmark::recursive_method_calls@89 (line 80)
                                                    ; {optimized virtual_call}
```

### Conclusions

The Oracle GraalVM JIT compiler, in this scenario, was able to eliminate the dead arguments. This effect appears to be mostly a result of more aggressive inlining.

In comparison, the C2 JIT compiler has a limited capability for inlining recursive calls (`recursive_method_calls` scenario), resulting in slower execution times compared to the GraalVM CE JIT compiler. However, in this benchmark, neither of the two compilers eliminates dead arguments since full inlining of the callee method `recursiveMethod` does not occur.

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

Source code: [DeadLocalAllocationStoreBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadLocalAllocationStoreBenchmark.java)

[![DeadLocalAllocationStoreBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DeadLocalAllocationStoreBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DeadLocalAllocationStoreBenchmark.svg?raw=true)

Looking at the plot above we can see that all compilers perform equally well in all cases except for `wrapper_obj_baseline`
and `wrapper_obj_dse_inter_procedural`.

### Analysis of wrapper_obj_baseline

This section analyzes the `wrapper_obj_baseline` benchmark.

#### C2 JIT Compiler and GraalVM CE JIT Compiler

The C2 and GraalVM CE JIT compilers are close in performance in the `wrapper_obj_baseline` case. Eight `Object` allocations
are performed in the generated assembly code and stored in the `Wrapper` object fields. The pattern of the
generated assembly code is the same for all eight allocations.

```
  0x7f0e90639089:   mov    0x1b8(%r15),%rbx             ; load the TLAB top
  0x7f0e90639090:   mov    %rbx,%r10
  0x7f0e90639093:   add    $0x10,%r10                   ; bump pointer allocation in TLAB; allocate sizeof(Object) (16 bytes)
  0x7f0e90639097:   nopw   0x0(%rax,%rax,1)             ; alignment nop
  0x7f0e906390a0:   cmp    0x1c8(%r15),%r10             ; TLAB bounds check
  0x7f0e906390a7:   jae    0x7f0e90639905               ; jump to slow path if TLAB is full. Try to request a new TLAB.
  0x7f0e906390ad:   mov    %r10,0x1b8(%r15)             ; TLAB allocation successful, update TLAB top.
  0x7f0e906390b4:   prefetchw 0xc0(%r10)                ; prefetch for the next allocation
  0x7f0e906390bc:   movq   $0x1,(%rbx)                  ; set the mark word of the object (0x1 to mark it as unlocked)
  0x7f0e906390c3:   movl   $0xe80,0x8(%rbx)             ; store the klass word  {metadata(&apos;java/lang/Object&apos;)}
  0x7f0e906390ca:   mov    %r12d,0xc(%rbx)
  0x7f0e906390ce:   cmpb   $0x0,0x40(%r15)
  0x7f0e906390d3:   jne    0x7f0e9063949c
  0x7f0e906390d9:   mov    %rbx,%r11                    ; store the object reference in the local variable
  0x7f0e906390dc:   shr    $0x3,%r11                    ; compute the oop from the full address
  0x7f0e906390e0:   mov    %r11d,0x10(%rbp)             ; store the oop in the field
  ...
  ^ the above sequence is repeated for the remaining 7 allocations
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler is faster than the C2 and GraalVM CE JIT compilers. The reason for this is that it is
able to generate more compact assembly code for the grouped allocations that allows for better prefetching
and pipelining. On the fast path, it also performs a single **thread-local allocation buffer** ([TLAB](https://openjdk.org/groups/hotspot/docs/HotSpotGlossary.html)) allocation for the sum of the sizes of all the objects.

```
  0x7f62bad7dfdf:   mov    0x1b8(%r15),%rax            ; load the TLAB top
  0x7f62bad7dfe6:   lea    0xb0(%rax),%rsi             ; bump pointer allocation in TLAB = 48 (sizeof(Wrapper)) + 16 * 8 (sizeof(Object))
  0x7f62bad7dfed:   cmp    0x1c8(%r15),%rsi            ; TLAB bounds check
  0x7f62bad7dff4:   ja     0x7f62bad7e151              ; jump to slow path if TLAB is full.
  0x7f62bad7dffa:   mov    %rsi,0x1b8(%r15)            ; TLAB allocation successful, update TLAB top.
  0x7f62bad7e001:   prefetchw 0x170(%rax)              ; prefetches for allocated objects and the next allocation
  0x7f62bad7e008:   prefetchw 0x1b0(%rax)              ; ^
  0x7f62bad7e00f:   prefetchw 0x1f0(%rax)              ; ^
  0x7f62bad7e016:   prefetchw 0x230(%rax)              ; ^
  0x7f62bad7e01d:   data16 xchg %ax,%ax                ; alignment nop
  0x7f62bad7e020:   test   %rax,%rax                   ; edge case when TLAB allocation failed and a new TLAB was requested (rax = 0)
  0x7f62bad7e023:   je     0x7f62bad7e15d              ; ^ 
  0x7f62bad7e029:   mov    %rax,%rsi                   ; rsi = rax = Wrapper object address
  0x7f62bad7e02c:   lea    0x30(%rax),%r10             ; r10 = address of the first Object field
  0x7f62bad7e030:   lea    0x40(%rax),%r11             ; r11 = address of the second Object field
  0x7f62bad7e034:   lea    0x50(%rax),%r8              ; r8 = address of the third Object field
  0x7f62bad7e038:   lea    0x60(%rax),%r9              ; r9 = address of the fourth Object field
  0x7f62bad7e03c:   lea    0x70(%rax),%rcx             ; rcx = address of the fifth Object field
  0x7f62bad7e040:   lea    0x80(%rax),%rbx             ; rbx = address of the sixth Object field
  0x7f62bad7e047:   lea    0x90(%rax),%rdi             ; rdi = address of the seventh Object field
  0x7f62bad7e04e:   lea    0xa0(%rax),%rdx             ; rdx = address of the eighth Object field
  0x7f62bad7e055:   movq   $0x1,(%rax)                 ; set the mark word of the Wrapper object (0x1 to mark it as unlocked)
  0x7f62bad7e05c:   movl   $0x102bd88,0x8(%rax)        ; store the klass word of the Wrapper object
  0x7f62bad7e063:   shr    $0x3,%r10                   ; compute the oop of the first Object field
  0x7f62bad7e067:   mov    %r10d,0xc(%rax)             ; store the oop in the field
  0x7f62bad7e06b:   shr    $0x3,%r11                   ; compute the oop of the second Object field
  0x7f62bad7e06f:   mov    %r11d,0x10(%rax)            ; store the oop in the field
  ...
  <-- same pattern for the remaining 6 Object fields -->
  ...
  0x7f62bad7e09f:   movq   $0x1,0x30(%rax)             ; set the mark word of the first Object field (0x1 to mark it as unlocked)
  0x7f62bad7e0a7:   movl   $0xe80,0x38(%rax)           ; store the klass word of the first Object field
  0x7f62bad7e0ae:   movq   $0x1,0x40(%rax)             ; set the mark word of the second Object field (0x1 to mark it as unlocked)
  0x7f62bad7e0b6:   movl   $0xe80,0x48(%rax)           ; store the klass word of the second Object field
  ...
  <-- same pattern for the remaining 6 Object fields -->
  ...
  0x7f62bad7e129:   mov    %rsi,%rax                   ; move the Wrapper object address into the return register
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

## DeadMethodCallStoreBenchmark

The benchmark assesses how the compiler could remove code (i.e., a dead method call store) that does not affect the program results.

```
  @Benchmark
  public double method_call_dse() {
    double pi;
    pi = computePi();
    pi = computePi();
    pi = computePi();
    pi = computePi();
    pi = computePi();
    return circleRadius * circleRadius * pi;
  }
  
  @Benchmark
  public double method_call_baseline() {
    double pi = computePi();
    return circleRadius * circleRadius * pi;
  }
  
  // Leibniz formula for π
  private static double computePi() {
    double pi = 4;
    boolean sign = false;

    for (int i = 3; i < 1_000; i += 2) {
      if (sign) {
        pi += 4.0 / i;
      } else {
        pi -= 4.0 / i;
      }
      sign = !sign;
    }

    return pi;
  }  
```

Source code: [DeadMethodCallStoreBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadMethodCallStoreBenchmark.java)

[![DeadMethodCallStoreBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DeadMethodCallStoreBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DeadMethodCallStoreBenchmark.svg?raw=true)

### Analysis of method_call_dse

The analysis below pertains to the `method_call_dse` method, which is the primary focus of the benchmark.

#### C2 JIT Compiler

The C2 JIT compiler inlines all the `computePi` methods, and then the dead operations are removed.
Without inlining of the call target, a compiler (in general) wouldn't see the dead operation eliminated since it would not know if the callee has side effects that cannot be eliminated.

Additionally, it unrolls the main loop by a factor of 16, thereby handling 16 operations per unrolled loop cycle. To compute the results, the compiler leverages double-precision scalar floating-point instructions with SIMD capabilities, utilizing SSE/AVX extensions.

```
  // Main loop (from 0x5 ... to 0x3e2)
  
    0x7f044c636b7a:   mov    $0x5,%r9d                         ; r9d = 5 (loop counter)
  ↗ 0x7f044c636ba0:   vaddsd %xmm1,%xmm0,%xmm0                 ; xmm0 = xmm0 + xmm1
  │ 0x7f044c636ba4:   mov    %r10d,%r9d                        ; r9d = r10d 
  │ 0x7f044c636ba7:   lea    0x1e(%r9),%r11d                   ; r11d = r9 + 0x1e (i.e., offset 30)
  │ 0x7f044c636bab:   lea    0x1a(%r9),%r8d                    ; r8d = r9 + 0x1a (i.e., offset 26)
  │ 0x7f044c636baf:   vcvtsi2sd %r11d,%xmm1,%xmm1              ; convert r11d to double and store in xmm1
  │ 0x7f044c636bb4:   vdivsd %xmm1,%xmm2,%xmm3                 ; xmm3 = xmm2 / xmm1
  │                                                            ; xmm2 stores the 4.0 value
  │ 0x7f044c636bb8:   vcvtsi2sd %r8d,%xmm1,%xmm1               ; convert r8d to double and store in xmm1
  │ 0x7f044c636bbd:   vdivsd %xmm1,%xmm2,%xmm4                 ; xmm4 = xmm2 / xmm1
  │ ...
  │ <--- similar for offsets 0x1c, 0x18, 0x10, 0x8 -->
  │ <--- store results in xmm5, xmm6, xmm7, xmm8 -->
  │ ...
  │ 0x7f044c636bf5:   lea    0x2(%r9),%r11d // 2               ; set r11d = r9 + 0x2 (i.e., offset 2)
  │ 0x7f044c636bf9:   lea    0x4(%r9),%r8d  // 4               ; set r8d = r9 + 0x4 (i.e., offset 4)
  │ 0x7f044c636bfd:   vcvtsi2sd %r11d,%xmm1,%xmm1              ; convert r11d to double and store in xmm1
  │ 0x7f044c636c02:   vdivsd %xmm1,%xmm2,%xmm1                 ; xmm1 = xmm2 / xmm1
  │ 0x7f044c636c06:   vsubsd %xmm1,%xmm0,%xmm0                 ; xmm0 = xmm0 - xmm1
  │ 0x7f044c636c0a:   vcvtsi2sd %r8d,%xmm1,%xmm1               ; convert r8d to double and store in xmm1
  │ 0x7f044c636c0f:   vdivsd %xmm1,%xmm2,%xmm1                 ; xmm1 = xmm2 / xmm1
  │ 0x7f044c636c13:   vaddsd %xmm1,%xmm0,%xmm0                 ; xmm0 = xmm0 + xmm1
  │ ...
  │ <--- similar for offsets 0x6, 0xa, 0xc, 0xe, 0x12, 0x14, 0x16, 0x20 -->
  │ <--- the results are alternatively stored in xmm0, xmm1 -->
  │ ...
  │ 0x7f044c636ca6:   lea    0x20(%r9),%r10d                   ; set r10d = r9 + 0x20 (i.e., offset 32)
  │ 0x7f044c636caa:   vcvtsi2sd %r10d,%xmm1,%xmm1              ; convert r10d to double and store in xmm1
  │ 0x7f044c636caf:   vdivsd %xmm1,%xmm2,%xmm1                 ; xmm1 = xmm2 / xmm1
  │ 0x7f044c636cc0:   cmp    $0x3e2,%r10d                      ; compare against 994
  ╰ 0x7f044c636cc7:   jl     0x7f044c636ba0                    ; loop back if less
  ; xmm1 stores the result of the main loop
```

The post-loop processes the remaining elements individually, without unrolling:

```
  // Post loop (0x3e2 ... 0x3e8)
  
    0x7f044c636ccd:   add    $0x20,%r9d            ; r9d = r9d + 0x20 (loop counter)
    0x7f044c636cd1:   mov    $0x1,%r10d            ; r10d = 1
  ↗ 0x7f044c636cd7:   test   %r10d,%r10d           ; check if r10d is zero
  │ 0x7f044c636cda:   je     0x7f044c636ce2        ; jump if r10d == 0
  │ 0x7f044c636cdc:   vaddsd %xmm1,%xmm0,%xmm0     ; xmm0 = xmm0 + xmm1
  │ 0x7f044c636ce0:   jmp    0x7f044c636ce6
  │ 0x7f044c636ce2:   vsubsd %xmm1,%xmm0,%xmm0     ; xmm0 = xmm0 - xmm1
  │ 0x7f044c636ce6:   add    $0x2,%r9d             ; r9d = r9d + 2 (increment by loop stride)
  │ 0x7f044c636cea:   cmp    $0x3e8,%r9d           ; compare against 1000
  │ 0x7f044c636cf1:   jge    0x7f044c636d02        ; exit loop if greater or equal
  │ 0x7f044c636cf3:   vcvtsi2sd %r9d,%xmm1,%xmm1   ; convert r9d to double and store in xmm1
  │ 0x7f044c636cf8:   vdivsd %xmm1,%xmm2,%xmm1     ; xmm1 = xmm2 / xmm1
  │ 0x7f044c636cfc:   xor    $0x1,%r10d            ; r10d = r10d XOR 1 (i.e., toggle r10d between 0 and 1)
  ╰ 0x7f044c636d00:   jmp    0x7f044c636cd7        ; jump loop back
    ; xmm1 stores the result of the post loop
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM compiler optimizes code by eliminating redundant method calls and applying inlining to the `computePi` method, much like the C2 JIT.

It achieves optimization by unrolling the main loop by a factor of 8, allowing 8 operations to be handled per unrolled loop cycle using double-precision scalar floating-point instructions.

```
  // Main loop (0x5 ... 0x3d8)
  
    0x7f0ac2d7d86a:   mov    $0x5,%r10d                   ; r10d = 5 (loop counter)
  ↗ 0x7f0ac2d7d880:   lea    0x10(%r10),%r11d             ; r11d = r10 + 0x10 (i.e., offset 16)
  │ 0x7f0ac2d7d884:   vxorpd %xmm2,%xmm2,%xmm2            ; zero out xmm2
  │ 0x7f0ac2d7d888:   vcvtsi2sd %r10d,%xmm2,%xmm2         ; convert r10d to double and store in xmm2
  │ 0x7f0ac2d7d88d:   vdivsd %xmm2,%xmm0,%xmm2            ; xmm2 = xmm0 / xmm2
  │ 0x7f0ac2d7d891:   vaddsd %xmm2,%xmm1,%xmm1            ; xmm1 = xmm1 + xmm2
  │ 
  │ 0x7f0ac2d7d895:   lea    0x2(%r10),%r8d               ; r8d = r10 + 0x2 (i.e., offset 2)
  │ 0x7f0ac2d7d899:   vxorpd %xmm2,%xmm2,%xmm2            ; zero out xmm2
  │ 0x7f0ac2d7d89d:   vcvtsi2sd %r8d,%xmm2,%xmm2          ; convert r8d to double and store in xmm2
  │ 0x7f0ac2d7d8a2:   vdivsd %xmm2,%xmm0,%xmm2            ; xmm2 = xmm0 / xmm2
  │ 0x7f0ac2d7d8a6:   vsubsd %xmm2,%xmm1,%xmm1            ; xmm1 = xmm1 - xmm2
  │ ...
  │ <--- similar for offsets 0x4, 0x6, 0x8, 0xa, 0xc, 0xe -->
  │ <--- the results are alternatively stored in xmm0, xmm1 -->
  │ ...
  │ 0x7f0ac2d7d928:   mov    %r11d,%r10d                  ; r10d = r11d 
  │ 0x7f0ac2d7d92b:   cmp    $0x3d8,%r10d                 ; compare against 984 
  ╰ 0x7f0ac2d7d932:   jb     0x7f0ac2d7d880               ; loop back if below
    ; xmm1 stores the result of the main loop
```

Of interest in this listing are the `vxorpd` instructions (used to zero out the target registers before each convert instruction), which might help to avoid the pipeline stalls due to false dependencies.

The post-loop processes the remaining elements individually, without unrolling:

```
  // Post loop (0x3d8 ... 0x3e8)

      0x7f0ac2d7d938:   mov    %r10d,%r11d            ; r11 = r10 (loop counter)
      0x7f0ac2d7d93b:   mov    $0x1,%r10d             ; r10d = 0x1
      ...
  ↗↗  0x7f0ac2d7d950:   cmp    $0x3e8,%r11d           ; compare against 1000
  ││  0x7f0ac2d7d957:   jae    0x7f0ac2d7d996         ; exit loop if greater or equal
  ││  0x7f0ac2d7d95d:   lea    0x2(%r11),%r8d         ; r8d = r11 + 2 (increment by loop stride)
  ││  0x7f0ac2d7d961:   mov    %r10d,%r9d             ; r9d = r10d
  ││  0x7f0ac2d7d964:   xor    $0x1,%r9d              ; toggle the least significant bit of r9d (i.e., r10d)
  ││  0x7f0ac2d7d968:   vxorpd %xmm2,%xmm2,%xmm2      ; zero out xmm2
  ││  0x7f0ac2d7d96c:   vcvtsi2sd %r11d,%xmm2,%xmm2   ; convert r11d to double and store in xmm2
  ││  0x7f0ac2d7d971:   vdivsd %xmm2,%xmm0,%xmm2      ; xmm2 = xmm0 / xmm2
  ││  0x7f0ac2d7d975:   test   %r10d,%r10d            ; check r10d is zero
  ││╭ 0x7f0ac2d7d978:   jne    0x7f0ac2d7d98a         ; jump if r10d != 0 (for subtraction)
  │││ 0x7f0ac2d7d97e:   vsubsd %xmm2,%xmm1,%xmm1      ; xmm1 = xmm1 - xmm2
  │││ 0x7f0ac2d7d982:   mov    %r8d,%r11d             ; r11d = r8d
  │││ 0x7f0ac2d7d985:   mov    %r9d,%r10d             ; r10d = r9d
  │╰│ 0x7f0ac2d7d988:   jmp    0x7f0ac2d7d950         ; end subtract loop)
  │ ↘ 0x7f0ac2d7d98a:   vaddsd %xmm2,%xmm1,%xmm1      ; xmm1 = xmm1 + xmm2
  │   0x7f0ac2d7d98e:   mov    %r8d,%r11d             ; r11d = r8d
  │   0x7f0ac2d7d991:   mov    %r9d,%r10d             ; r10d = r9d
  ╰   0x7f0ac2d7d994:   jmp    0x7f0ac2d7d950         ; end addition loop)
      ; xmm1 stores the result of the post loop
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler cannot completely remove the loops associated with the dead store method calls; hence, they persist as dead loops.

```
  Dead loop (appears four times; i.e., equivalent to the number of dead method calls)

    0x7f94ab23c48d:   mov    $0x5,%r10d                ; r10 = 5  (loop counter)
    ...
  ↗ 0x7f94ab23c4a0:   lea    0x2(%r10),%r10d           ; r10d = r10 + 2 (increment by loop stride)
  │ 0x7f94ab23c4a4:   cmp    $0x3e8,%r10d              ; compare against 1000
  ╰ 0x7f94ab23c4ab:   jl     0x7f94ab23c4a0            ; loop back if less than 1000
```

Subsequently, the loop corresponding to the non-dead store method call is not unrolled.

```
      0x7f94ab23c4fd:   mov    $0x1,%r11d               ; r11 = 1
      0x7f94ab23c503:   mov    $0x5,%r10d               ; r10 = 5  (loop counter)
      ...
  ↗↗  0x7f94ab23c510:   cmp    $0x3e8,%r10d             ; compare against 1000
  ││  0x7f94ab23c517:   jge    0x7f94ab23c54c           ; exit loop if greater or equal
  ││  0x7f94ab23c51d:   vcvtsi2sd %r10d,%xmm2,%xmm2     ; convert r10d to double and store in xmm2
  ││  0x7f94ab23c522:   vdivsd %xmm2,%xmm0,%xmm2        ; xmm2 = xmm0 / xmm2
  ││  0x7f94ab23c526:   mov    %r11d,%r8d               ; r8 = r11
  ││  0x7f94ab23c529:   xor    $0x1,%r8d                ; r8 = r8 XOR 1 (toggle the least significant bit of r8)
  ││  0x7f94ab23c52d:   lea    0x2(%r10),%r10d          ; r10d = r10 + 2 (increment by loop stride)
  ││  0x7f94ab23c531:   test   %r11d,%r11d              ; check r11d is zero
  ││╭ 0x7f94ab23c534:   jne    0x7f94ab23c543           ; jump if r11d != 0 (for subtraction)
  │││ 0x7f94ab23c53a:   vsubsd %xmm2,%xmm1,%xmm1        ; xmm1 = xmm1 - xmm2
  │││ 0x7f94ab23c53e:   mov    %r8d,%r11d
  │╰│ 0x7f94ab23c541:   jmp    0x7f94ab23c510           ; end subtract loop
  │ ↘ 0x7f94ab23c543:   vaddsd %xmm1,%xmm2,%xmm1        ; xmm1 = xmm1 + xmm2
  │   0x7f94ab23c547:   mov    %r8d,%r11d
  ╰   0x7f94ab23c54a:   jmp    0x7f94ab23c510           ; end addition loop
      ; xmm1 stores the result of the loop
```

### Conclusions

In this scenario, the GraalVM CE JIT exibits suboptimal optimizations, lacking loop unrolling and unable to eliminate loops related to dead method calls.

Oracle GraalVM JIT successfully eliminates the dead method calls and triggers loop unrolling by a factor of 8, handling the remaining elements in a post loop without unrolling.

C2 JIT also eliminates dead method calls, performing loop unrolling by a factor of 16 for the main loop and handling the remaining elements in a post loop without unrolling.

Despite employing a more aggressive unrolling approach, C2 JIT does not necessarily outperform Oracle GraalVM JIT. Even though both JITs rely on double-precision scalar floating-point instructions with SIMD capabilities via SSE/AVX extensions, Oracle GraalVM JIT appears to issue more compact and predictable instructions for the hardware we used.

## EnumValuesLookupBenchmark

This benchmark iterates through the enum values list and returns the enum constant matching a lookup value. It emphasizes the cost of calling the values() method on an eum versus caching the values and using the cached version.

This pattern is often seen in real business applications where, for example, the microservices RESTful APIs defined in OpenAPI/Swagger use enums.
The input request parameters are deserialized and wrapped to enum values.

In order to match the input parameter to the enum value, `String.equals()` comparison is used.

```
  private static final Car[] cachedCars = Car.values();
  
  @Benchmark
  public Car cached_enum_values() {
    return Car.fromCachedValues(lookUpValue);
  }

  @Benchmark
  public Car enum_values() {
    return Car.fromValues(lookUpValue);
  }
  
  public enum Car {
    private String carValue;
    // ...
  }   
  
  public static Car[] cachedValues() {
    return cachedCars;
  }
  
  public static Car fromValues(String targetValue) {
    for (Car b : Car.values()) {
      if (b.carValue.equals(targetValue)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + targetValue + "'");
  }

  public static Car fromCachedValues(String targetValue) {
    for (Car b : Car.cachedValues()) {
      if (b.carValue.equals(targetValue)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + targetValue + "'");
  }
```

Source code: [EnumValuesLookupBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark.java)

[![EnumValuesLookupBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/EnumValuesLookupBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/EnumValuesLookupBenchmark.svg?raw=true)

### Analysis of cached_enum_values

The analysis below pertains to the `cached_enum_values` method, which is the primary focus of the benchmark.

#### C2 JIT Compiler

The C2 JIT compiler iterates through the array of cached enum values, attempting to find a match for the `lookUpValue`. 
It employs loop peeling for the first two iterations, then checks for object reference equality, String coder equality, and String byte arrays length equality. 
Finally, the compiler utilizes AVX instructions to perform Strings byte array comparison.

```
        0x07fa1a84f7cda:   movabs $0x7ff03b178,%rdx            ; load the enum values array address into register rdx
                                                               ; {oop(a &apos;EnumValuesLookupBenchmark$Car&apos;[41] {0x00007ff03b178})}
        0x07fa1a84f7ced:   mov    0x14(%rsi),%r11d             ; load 'lookUpValue'
        0x07fa1a84f7d09:   movsbl 0x10(%r12,%r11,8),%r9d       ; load 'coder' field (i.e., byte) of 'lookUpValue'
        0x07fa1a84f7d18:   mov    0x14(%r12,%r11,8),%ebx       ; load 'value' field (i.e., byte[]) of 'lookUpValue'
        0x07fa1a84f7d22:   mov    0xc(%r12,%rbx,8),%r8d        ; load the byte[] length of 'lookUpValue'
        ...
        <-- loop peeling for the first two iterations -->
        ...
        0x07fa1a84f7f13:   mov    $0x2,%r10d                   ; initialize loop counter r10d = 2
  ╭     0x07fa1a84f7f19:   jmp    0x07fa1a84f7f2d
  │
  │  ↗↗ 0x07fa1a84f7f20:   inc    %r10d                        ; increment loop counter
  │  ││ 0x07fa1a84f7f23:   cmp    $0x29,%r10d                  ; compare against 41 (i.e., enum values array length)
  │  ││ 0x07fa1a84f7f27:   jge    0x07fa1a84f8088              ; jump if greater than or equal to exit loop
  ↘  ││ 0x07fa1a84f7f2d:   mov    0x10(%rdx,%r10,4),%ebx       ; load Car object from enum values array at index [rdx + r10 * 4 + 16]
     ││ 0x07fa1a84f7f32:   mov    0x18(%r12,%rbx,8),%edi       ; load 'carValue' field from the Car object at offset 0x18
     ││ 0x07fa1a84f7f40:   movsbl 0x10(%r12,%rdi,8),%ecx       ; load 'coder' field (i.e., byte) of 'carValue'
     ││ 0x07fa1a84f7f46:   lea    (%r12,%rbx,8),%r13           ; load the Car object
     ││ 0x07fa1a84f7f4a:   cmp    %r11d,%edi                   ; compare if the 'carValue' is the same as 'lookUpValue'
   ╭ ││ 0x07fa1a84f7f4d:   je     0x07fa1a84f8035              ; jump if they are equal
   │ ││                                                        ; - java.lang.String::equals@2 (line 1858)
   │ ││ 0x07fa1a84f7f53:   cmp    %r9d,%ecx                    ; compare coders of 'carValue' (ecx) and 'lookUpValue' (r9d)
   │╭││ 0x07fa1a84f7f56:   jne    0x07fa1a84f8054              ; jump if are not equal
   ││││                                                        ; - java.lang.String::equals@33 (line 1861)
   ││││ 0x07fa1a84f7f5c:   mov    0x14(%r12,%rdi,8),%ebx       ; load 'value' field (i.e., byte[]) of 'carValue'
   ││││                                                        ; - java.lang.String::equals@37 (line 1861)
   ││││ 0x07fa1a84f7f61:   mov    0xc(%r12,%rbx,8),%ecx        ; load the 'value' length (i.e., byte[]) of 'carValue'
   ││││ 0x07fa1a84f7f66:   cmp    %r8d,%ecx                    ; compare 'carValue' value length against 'lookUpValue' value length
   ││╰│ 0x07fa1a84f7f69:   jne    0x07fa1a84f7f20              ; jump back if not equal
   ││ │                                                        ; - java.lang.String::equals@44 (line 1863)
   ││ │ 0x07fa1a84f7f6b:   lea    (%r12,%rbx,8),%rdi           ; load 'value' field (i.e., byte[]) of Car object
   ││ │                                                        ; - java.lang.String::equals@37 (line 1861)
   ││ │ 0x07fa1a84f7f6f:   lea    0x10(%r12,%rbx,8),%rdi       ; load byte[] content of Car object
   ││ │ ...
   ││ │ <--- Vectorized operations using YMM registers for byte array comparison --->
   ││ │ ...                                                    ; - java.lang.String::equals@44 (line 1863)
   ││ │ 0x07fa1a84f802d:   test   %eax,%eax
   ││ ╰ 0x07fa1a84f802f:   je     0x07fa1a84f7f20              ; jump back
   ↘│   0x07fa1a84f8035:   mov    %r13,%rax
    │   ...
    │   0x07fa1a84f804d:   ret
    │   0x07fa1a84f804e:   mov    $0x1,%r10d
    ↘   0x07fa1a84f8054:   mov    %r13,%rbp
      ╭ 0x07fa1a84f8057:   jmp    0x07fa1a84f805f
      │ ...
      ↘ 0x07fa1a84f805f:   mov    $0xffffff45,%esi
        ...
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT iterates through the array of cached enum values. When attempting to compare the `lookUpValue` value against the enum values (i.e., String comparisons), it utilizes an intrinsic candidate (e.g., `IntrinsicStubsGen.arrayRegionEqualsS1S1`) for the byte array values. 
Unlike C2 JIT Compiler, it does not perform loop peeling, has a slightly reduced number of branch conditional jumps, and, for example, to compare the String coders, it uses a byte register (`cmp %r13b,%cl`) instead of a 32-bit register.

```
      0x7fa3aada2303:   movabs $0x7fed3af88,%rbx            ; load the enum values array address into register rbx
                                                            ; {oop(a &apos;EnumValuesLookupBenchmark$Car&apos;[41] {0x7fed3af88})}
      0x7fa3aada2316:   mov    0x14(,%r11,8),%edx           ; load 'value' field (i.e., byte[]) of 'lookUpValue'
      0x7fa3aada231e:   mov    0xc(,%rdx,8),%ebp            ; load the byte[] length of 'lookUpValue'
      0x7fa3aada2325:   movsbl 0x10(,%r11,8),%r13d          ; load 'coder' field (i.e., byte) of 'lookUpValue'
      ...
      0x7fa3aada2348:   shl    $0x3,%rdx                    ;* unwind (locked if synchronized)
                                                            ; - java.lang.String::equals@-3
      0x7fa3aada2351:   mov    $0x0,%r10d                   ; initialize loop counter r10d
    ↗ 0x7fa3aada2360:   cmp    $0x29,%r10d                  ; compare against 41 (enum values array length)
    │ 0x7fa3aada2364:   jae    0x7fa3aada24ac               ; jump if greater than or equal to 41 (exit the loop)
    │ 0x7fa3aada236a:   mov    0x10(%rbx,%r10,4),%edi       ; load Car object from enum values array at index [rbx + r10 * 4 + 0x10]
    │ 0x7fa3aada236f:   mov    0x18(,%rdi,8),%esi           ; load 'carValue' field from the Car object at offset 0x18
    │ 0x7fa3aada2376:   movsbl 0x10(,%rsi,8),%ecx           ; extract the 'carValue' coder at offset 0x10
    │ 0x7fa3aada237e:   mov    0x14(,%rsi,8),%r8d           ; get the 'carValue' byte[] at offset 0x14
    │ 0x7fa3aada2386:   cmp    %r11d,%esi                   ; compare if the 'carValue' is the same as 'lookUpValue'
    │ 0x7fa3aada2389:   je     0x7fa3aada2431               ; jump if they are equal
    │                                                       ; - java.lang.String::equals@-3
    │ 0x7fa3aada238f:   mov    %r10d,%eax
    │ 0x7fa3aada2392:   inc    %eax                         ; increment loop counter
    │ 0x7fa3aada2394:   cmp    %r13b,%cl                    ; compare coders of 'carValue' (low byte of the rcx) and 'lookUpValue' (low byte of register r13)
    │ 0x7fa3aada2397:   jne    0x7fa3aada23f5               ; jump if coders are not equal
    │ ...
    │ 0x7fa3aada23a9:   cmp    0xc(,%r8,8),%ebp             ; compare the byte array lengths
   ╭│ 0x7fa3aada23b1:   jne    0x7fa3aada23fd               ; jump if lengths are not the same
   ││ ...
   ││ <--- Trigger the comparison of two byte array regions using an intrinsic stub  -->
   ││ 0x7fa3aada23d9:   call   0x7fa3aa912000               ; call the runtime function for byte array region comparison
   ││                                                       ; {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
   ││ ...
   ││ 0x7fa3aada23e0:   test   %eax,%eax                    ; test the result of the byte array region comparison
  ╭││ 0x7fa3aada23e2:   jne    0x7fa3aada2405               ; jump if ZF is not set (i.e., arrays are equal)
  │││ ...
  │↘│ 0x7fa3aada23fd:   mov    %eax,%r10d                   ; r10d = eax
  │ ╰ 0x7fa3aada2400:   jmp    0x7fa3aada2360               ; loop back if arrays are not equal
  ↘   0x7fa3aada2405:   mov    0x4(%rsp),%edi               : load Car object from stack
      0x7fa3aada2409:   shl    $0x3,%rdi
      0x7fa3aada240d:   mov    %rdi,%rax
      ...
      0x7fa3aada2430:   ret
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler performs loop peeling for the first iteration but, other than that, employs a very similar approach to the Oracle GraalVM JIT compiler for comparing Strings. It utilizes the same intrinsic stub (e.g., `IntrinsicStubsGen.arrayRegionEqualsS1S1`).

### Analysis of enum_values

Regarding the other `enum_values` benchmark, it is impacted by the object allocations triggered by the `Enum::values` call that is an invoke virtual the to clone() method.

The following snapshot is from the C2 JIT compiler output, although the same pattern occurs for the GraalVM compilers (Oracle GraalVM JIT and GraalVM CE JIT).

```
                                                         ; <--- (TLAB) Allocation (and initialization)
  0x07f77984f8d83:   mov    0x1b8(%r15),%r13             ; r13 = r15 + 0x1b8 (offset calculation)
  0x07f77984f8d8a:   mov    %r13,%r10                    ; r10 = r13 (store calculated offset)
  0x07f77984f8d8d:   add    $0xb8,%r10                   ; r10 = r10 + 0xb8 (offset for comparison)
  0x07f77984f8da0:   cmp    0x1c8(%r15),%r10             ; compare r10 with r15 + 0x1c8
  0x07f77984f8da7:   jae    0x07f77984f9091              ; jump if above or equal, indicating no more space for allocation
  0x07f77984f8dad:   mov    %r10,0x1b8(%r15)             ; store the offset back into memory for future allocations
  0x07f77984f8db4:   prefetchw 0xc0(%r10)                ; prefetch memory
  0x07f77984f8dbc:   movq   $0x1,0x0(%r13)               ; store mark word header (initializing object)
  0x07f77984f8dc4:   prefetchw 0x100(%r10)               ; prefetch memory
  0x07f77984f8dcc:   movl   $0x10299f0,0x8(%r13)         ; store klass word header (initializing object)
                                                         ; {metadata(&apos;EnumValuesLookupBenchmark$Car&apos;[])}
  0x07f77984f8dd4:   prefetchw 0x140(%r10)               ; prefetch memory for future use
  0x07f77984f8ddc:   movl   $0x29,0xc(%r13)              ; store the enum values array length
  0x07f77984f8de4:   prefetchw 0x180(%r10)               ; prefetch memory
                                                         ; <--- (TLAB) Allocation end
  ...
  0x07f77984f8dec:   mov    %r13,%rsi
  0x07f77984f8def:   add    $0x10,%rsi
  0x07f77984f8df3:   mov    $0x15,%edx
  0x07f77984f8df8:   movabs $0x62ae275c0,%r10            ; load the enum values array address into register r10
                                                         ; {oop(a &apos;EnumValuesLookupBenchmark$Car&apos;[41] {0x062ae275c0})}
  0x07f77984f8e02:   movabs $0x62ae275c0,%rbx            ; load the enum values array address into register rbx
                                                         ; {oop(a &apos;EnumValuesLookupBenchmark$Car&apos;[41] {0x062ae275c0})}
  0x07f77984f8e0c:   add    $0x10,%rbx
  0x07f77984f8e10:   mov    %rbx,%rdi
  0x07f77984f8e16:   movabs $0x7f7797f6a400,%r10
  0x07f77984f8e20:   call   *%r10                        ; function call to handle enum values
  0x07f77984f8e2b:   mov    (%rbx),%r11d                 ; invokevirtual clone
                                                         ; - EnumValuesLookupBenchmark$Car::values
```

The hottest regions in the report shows the `StubRoutines::jlong_disjoint_arraycopy`, which is the stub generator for copying long arrays when the source and destination arrays do not overlap. This routine is a result of an `Enum::values` call.

```
  ....[Hottest Regions]...............................................................................
  62.25%           c2, level 4  EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
  13.47%           c2, level 4  EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
  9.31%           runtime stub  StubRoutines::jlong_disjoint_arraycopy
  3.94%            c2, level 4  EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
```

### Conclusions

Try to avoid calling `Enum::values`, especially within a loop, as it allocates a new array and assigns references to the enum values as elements. This can potentially generate a considerable amount of garbage.

For the `cached_enum_values` scenario, the Oracle GraalVM JIT slightly outperforms the C2 JIT compiler in this benchmark. 

Although GraalVM compilers utilize an intrinsic method that enables checking if two strings are equal within a defined region specified by a codepoint-based offset and length (for more details, see [TruffleStrings: a Highly Optimized Cross-Language String Implementation](https://graalworkshop.github.io/2022/slides/4_TruffleStrings.pdf)), in our benchmark, since the entire string is compared, this may not provide significant benefits compared to the method used by the C2 compiler (e.g., vectorized operations using YMM registers for byte array comparison).

## IfConditionalBranchBenchmark

This benchmark tests the conditional branch optimizations within a loop using:
- a predictable branch pattern
- an unpredictable branch pattern
- no branch at all

```
  // All array[] values are randomly generated within [0, THRESHOLD)

  @Benchmark
  public int no_if_branch() {
    int sum = 0;

    for (final int value : array) {
      sum += value;
    }

    return sum;
  }
  
  @Benchmark
  public int predictable_if_branch() {
    int sum = 0;

    // all values are less than the 'THRESHOLD', 
    // therefore the condition is true and the branch is always taken    
    for (final int value : array) {
      if (value < THRESHOLD) {
        sum += value;
      }
    }

    return sum;
  }
  
  @Benchmark
  public int unpredictable_if_branch() {
    int sum = 0;

    // some values are bigger and some are smaller than 'THRESHOLD / 2', 
    // making this condition unpredictable
    for (final int value : array) {
      if (value <= (THRESHOLD / 2)) {
        sum += value;
      }
    }

    return sum;
  }  
```

Source code: [IfConditionalBranchBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/IfConditionalBranchBenchmark.java)

[![IfConditionalBranchBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/IfConditionalBranchBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/IfConditionalBranchBenchmark.svg?raw=true)

### Analysis of no_if_branch

#### C2 JIT Compiler

The C2 JIT compiler unrolls the main loop by a factor of 16, thereby handling 16 additions per unrolled loop cycle.

```
  // Main loop
  
    0x7f374863acda:   mov    0x18(%rsi),%ebp              ; get the array pointer
    0x7f374863ace0:   mov    0xc(%r12,%rbp,8),%r11d       ; get the array length
    0x7f374863ad06:   mov    0x10(%r12,%rbp,8),%eax       ; load the value of the first element
    0x7f374863ad0b:   lea    (%r12,%rbp,8),%r8            ; get the array address
    0x7f374863ad13:   mov    $0x1,%ecx                    ; initialize loop counter
    0x7f374863ad2f:   mov    %r11d,%edx                   ; store array length
    ...
  ↗ 0x7f374863ad50:   add    0x10(%r8,%rcx,4),%eax        ; add the value of the 1st element
  │ 0x7f374863ad55:   add    0x14(%r8,%rcx,4),%eax        ; add the value of the 2nd element
  │ ...
  │ <--- additional lines for adding other elements -->
  │ ...
  │ 0x7f374863ad96:   add    0x48(%r8,%rcx,4),%eax        ; add the value of the 15th element
  │ 0x7f374863ad9b:   add    0x4c(%r8,%rcx,4),%eax        ; add the value of the 16th element
  │ 0x7f374863ada0:   add    $0x10,%ecx                   ; increment loop counter by 16
  │ 0x7f374863ada3:   cmp    %edx,%ecx                    ; compare loop counter with array length
  ╰ 0x7f374863ada5:   jl     0x7f374863ad50               ; loop back if less
    ; eax stores the result of the main loop  
```

The post-loop processes the remaining elements individually, without unrolling:

```
  // Post loop

  ↗ 0x7f374863adc0:   add    0x10(%r8,%rcx,4),%eax        ; add value of an element to eax
  │ 0x7f374863adc5:   inc    %ecx                         ; increment loop counter
  │ 0x7f374863adc7:   cmp    %r11d,%ecx                   ; compare loop counter with array length
  ╰ 0x7f374863adca:   jl     0x7f374863adc0               ; loop back if less
    ; eax stores the result of the post loop  
```

#### Oracle GraalVM JIT Compiler

Oracle GraalVM JIT compiler does to sum of elements array using vectorized instructions that operate on 256-bit wide AVX (Advanced Vector Extensions) registers, thereby handling 8 additions per unrolled loop cycle.

```
  // Main loop

    0x7fa68ad81b3f:   mov    0x18(%rsi),%eax              ; get the array pointer
    0x7fa68ad81b42:   mov    0xc(,%rax,8),%r10d           ; get the array length
    0x7fa68ad81b53:   shl    $0x3,%rax                    ; compressed oops (shift left by 3 for addressing)
    0x7fa68ad81b57:   lea    0x10(%rax),%rax              ; get the address of the array
    0x7fa68ad81b6a:   lea    -0x8(%r10),%r11              ; calculate (array length - 8)
    0x7fa68ad81b6e:   mov    $0x0,%r8                     ; initialize loop counter
    ...
  ↗ 0x7fa68ad81b80:   vmovdqu (%rax,%r8,4),%ymm1          ; load 256 bits (8 integers) into %ymm1
  │ 0x7fa68ad81b86:   vpaddd %ymm1,%ymm0,%ymm0            ; packed integer addition: ymm0 = ymm0 + ymm1
  │ 0x7fa68ad81b8a:   lea    0x8(%r8),%r8                 ; increment loop counter by 8
  │ 0x7fa68ad81b8e:   cmp    %r11,%r8                     ; compare loop counter with (array length - 8)
  ╰ 0x7fa68ad81b91:   jle    0x7fa68ad81b80               ; jump loop back if less
    ; ymm0 stores the result of the main loop  
```

The post-loop processes the remaining elements individually, without unrolling.

```
  // Post loop
  
    ...
    <-- transfers data from ymm0 (256-bit AVX register) into r11d (32-bit register) -->
    ...
  ↗ 0x7fa68ad81bc0:   add    (%rax,%r8,4),%r11d           ; add the value of an element to r11d
  │ 0x7fa68ad81bc4:   inc    %r8                          ; increment the loop counter
  │ 0x7fa68ad81bc7:   cmp    %r10,%r8                     ; compare the loop counter with the array length
  ╰ 0x7fa68ad81bca:   jle    0x7fa68ad81bc0               ; jump back if less
    ; r11d stores the result of the post loop  
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler optimizes the main loop by unrolling it with a factor of 16, enabling 16 additions to be processed per unrolled loop cycle. However, some registers are spilled onto the stack.

```
  // Main loop
  
    0x7f22eb23d83f:   mov    0x18(%rsi),%eax              ; get the array pointer
    0x7f22eb23d842:   mov    0xc(,%rax,8),%r10d           ; get the array length
    0x7f22eb23d85c:   mov    %r10d,%r8d                   ; copy array length to r8d
    0x7f22eb23d889:   shl    $0x3,%rax                    ; compressed oops (shift left by 3 for addressing)
    ...
    0x7f22eb23d890:   mov    $0x1,%r11d                   ; initialize r11d for loop count
    <--- Loop peeling -->
    0x7f22eb23d8a5:   inc    %r11d                        ; increment loop counter (r11d)
    ...
    0x7f22eb23d8c0:   mov    %r11d,%r9d                   ; initialize loop counter r9d from r11d
    ...
  ↗ 0x7f22eb23d8e0:   add    0x10(%rax,%r9,4),%r11d       ; add value of the 1st element to r11d
  │ 0x7f22eb23d8e5:   movslq %r9d,%rcx                    ; sign-extend r9d to rcx for addressing
  │ 0x7f22eb23d8e8:   mov    0x14(%rax,%rcx,4),%ebx       ; store the value of the 2nd element in ebx
  │ 0x7f22eb23d8ec:   mov    0x18(%rax,%rcx,4),%edi       ; store the value of the 3rd element in edi
  │ ...
  │ 0x7f22eb23d910:   mov    %r9d,0x1c(%rsp)              ; spill r9d (the loop counter) onto the stack
  │ 0x7f22eb23d915:   mov    0x38(%rax,%rcx,4),%r9d       ; store the value of the 11th element in r9d
  │ 0x7f22eb23d91a:   mov    %r9d,0x18(%rsp)              ; spill the 11th element (r9d) onto the stack
  │ 0x7f22eb23d91f:   mov    0x3c(%rax,%rcx,4),%r9d       ; store the value of the 12th element in r9d
  │ 0x7f22eb23d924:   mov    %r9d,0x14(%rsp)              ; spill the 12th element (r9d) onto the stack
  │ ...
  │ 0x7f22eb23d93d:   mov    0x48(%rax,%rcx,4),%r9d       ; store the value of the 15th element in r9d
  │ 0x7f22eb23d942:   add    %ebx,%r11d                   ; add the 2nd element to r11d
  │ 0x7f22eb23d945:   add    %edi,%r11d                   ; add the 3rd element to the previous sum (r11d)
  │ ...
  │ 0x7f22eb23d95d:   add    0x18(%rsp),%r11d             ; load the 11th element from stack and add to r11d
  │ 0x7f22eb23d962:   add    0x14(%rsp),%r11d             ; load the 12th element from stack and add to r11d
  │ ...
  │ 0x7f22eb23d971:   add    %r9d,%r11d                   ; add the 15th element to the sum (r11d)
  │ 0x7f22eb23d974:   add    0x4c(%rax,%rcx,4),%r11d      ; add the 16th element to the sum (r11d)
  │ 0x7f22eb23d979:   mov    0x1c(%rsp),%r9d              ; restore the loop counter from the stack
  │ 0x7f22eb23d97e:   lea    0x10(%r9),%r9d               ; increment loop counter by 16
  │ 0x7f22eb23d982:   mov    0x20(%rsp),%r8d              ; move saved value (i.e., array length) from stack to r8d
  │ 0x7f22eb23d987:   cmp    %r9d,%r8d                    ; compare loop counter with saved value
  ╰ 0x7f22eb23d98a:   jg     0x7f22eb23d8e0               ; jump loop back if greater
    ; r11d stores the result of the main loop
```

The post-loop processes the remaining elements individually, without unrolling.

```
  // Post loop

  ↗ 0x7f22eb23d9a0:   add    0x10(%rax,%r9,4),%r11d       ; add the value of an element to r11d
  │ 0x7f22eb23d9a5:   inc    %r9d                         ; increment the loop counter
  │ 0x7f22eb23d9a8:   cmp    %r9d,%r10d                   ; compare the loop counter with the array length
  ╰ 0x7f22eb23d9ab:   jg     0x7f22eb23d9a0               ; jump loop back if greater
    ; r11d stores the result of the main loop
```

### Analysis of unpredictable_if_branch

#### C2 JIT Compiler

The C2 JIT compiler unrolls the main loop by a factor of 8, effectively handling 8 additions per unrolled loop cycle. To manage comparisons against a specified threshold value, the compiler employs the `cmovle` instruction.

```
  // Main loop
  
    0x7f510463a25a:   mov    0x18(%rsi),%ebp              ; get the array pointer
    0x7f510463a260:   mov    0xc(%r12,%rbp,8),%ecx        ; get the array length
    0x7f510463a281:   lea    (%r12,%rbp,8),%r14           ; get the array address
    ...
    0x7f510463a2b4:   mov    %ecx,%r13d                   ; move the array length to r13d
    ...
  ↗ 0x7f510463a2f0:   mov    0x10(%r14,%rbp,4),%r10d      ; load the value of the 1st element into r10d
  │ ...
  │ 0x7f510463a318:   lea    (%rax,%r10,1),%edx           ; calculate an address offset
  │ 0x7f510463a31c:   cmp    $0x800,%r10d                 ; compare against 2048 (THRESHOLD / 2)
  │ 0x7f510463a323:   cmovle %edx,%eax                    ; conditional move: move the value to eax if less than or equal
  │ ...
  │ <--- similar for the 2nd, 3rd, 4th, 5th, 6th, 7th, and 8th elements -->
  │ ...
  │ 0x7f510463a38a:   add    $0x8,%ebp                    ; increment the loop counter
  │ 0x7f510463a38d:   cmp    %r13d,%ebp                   ; compare the loop counter with the array length
  ╰ 0x7f510463a390:   jl     0x7f510463a2f0               ; jump loop back if less
    ; eax stores the result of the main loop
```

The post-loop handles the remaining elements individually, without loop unrolling, employing the conditional move (`cmovle`) instruction to evaluate if the array values exceed the specified threshold.

#### Oracle GraalVM JIT Compiler

Oracle GraalVM JIT compiler uses vectorized instructions to perform the sum of elements in an array. It operates on 256-bit wide AVX (Advanced Vector Extensions) registers, allowing for 8 additions per unrolled loop cycle. This enables parallel handling of additions per unrolled loop iteration, leading to faster execution.

```
  // Main loop
  
    0x7fd01ad7e9df:   mov    0x18(%rsi),%eax              ; get the array pointer
    0x7fd01ad7e9e2:   mov    0xc(,%rax,8),%r10d           ; get the array length
    0x7fd01ad7e9f3:   shl    $0x3,%rax                    ; compressed oops (shift left by 3 for addressing)
    0x7fd01ad7e9f7:   lea    0x10(%rax),%rax              ; get the array address     
    ...
    0x7fd01ad7ea0e:   vmovdqa -0x96(%rip),%ymm1           ; load the value 'threshold'
    0x7fd01ad7ea16:   mov    $0x0,%r8                     ; initialize loop counter r8 to 0x0
    ...
  ↗ 0x7fd01ad7ea20:   vmovdqu (%rax,%r8,4),%ymm2          ; load 256 bits (8 integers) into ymm2
  │ 0x7fd01ad7ea26:   vpaddd %ymm2,%ymm0,%ymm3            ; packed integer addition ymm3 = ymm0 + ymm2
  │ 0x7fd01ad7ea2a:   vpcmpgtd %ymm2,%ymm1,%ymm2          ; compare elements against 'threshold', setting 1s for greater elements in ymm2
  │ 0x7fd01ad7ea2e:   vpblendvb %ymm2,%ymm3,%ymm0,%ymm0   ; blend bytes based on ymm0 mask using ymm2 and ymm3, result in ymm0
  │ 0x7fd01ad7ea34:   lea    0x8(%r8),%r8                 ; increment loop counter by 8
  │ 0x7fd01ad7ea38:   cmp    %r11,%r8                     ; compare the loop counter with the array length
  ╰ 0x7fd01ad7ea3b:   jle    0x7fd01ad7ea20               ; <--- loop end (jump loop back if less or equal)
    ; ymm0 stores the result of the main loop
```

#### GraalVM CE JIT

The GraalVM CE JIT compiler processes elements individually without loop unrolling, utilizing comparison and jump instructions to assess whether the array values surpass the predefined threshold.

```
     0x7f91d723d773:   mov    0x10(,%rax,8),%r11d          ; load the value of the first element
     0x7f91d723d77b:   cmp    $0x801,%r11d                 ; compare the first element against the 'threshold'
     0x7f91d723d782:   mov    $0x0,%r8d                    ; if greater, set r8d (i.e., the sum) to 0x0
     0x7f91d723d788:   cmovl  %r11d,%r8d                   ; if less, set r8d to the first element
     0x7f91d723d78c:   shl    $0x3,%rax                    ; compressed oops (shift left by 3 for addressing)
     0x7f91d723d790:   mov    $0x1,%r11d                   ; initialize loop counter
     ...
  ↗↗ 0x7f91d723d7a0:   cmp    %r11d,%r10d                  ; compare loop counter with the array length
  ││ 0x7f91d723d7a3:   jle    0x7f91d723d7c2               ; jump outside if less or equal
  ││ 0x7f91d723d7a9:   mov    0x10(%rax,%r11,4),%r9d       ; load the value of an element in r9d
  ││ 0x7f91d723d7ae:   inc    %r11d                        ; increment loop counter
  ││ 0x7f91d723d7b1:   cmp    $0x801,%r9d                  ; compare against 'threshold'
  │╰ 0x7f91d723d7b8:   jge    0x7f91d723d7a0               ; jump loop back if greater or equal
  │  0x7f91d723d7ba:   add    %r8d,%r9d                    ; add the element to the sum (r9d)
  │  0x7f91d723d7bd:   mov    %r9d,%r8d                    ; move the sum back to r8d
  ╰  0x7f91d723d7c0:   jmp    0x7f91d723d7a0               ; jump loop back
    ; r8d stores the result of the loop
```

### Conclusions

Oracle GraalVM's JIT compiler utilizes vectorized instructions, leveraging 256-bit wide AVX (Advanced Vector Extensions) registers for efficiently summing array elements.

The C2 JIT compiler unrolls the main loop by a factor of 16 (`no_if_branch` scenario) or by a factor of 8 (`unpredictable_if_branch` scenario). However, due to its use of scalar operations instead of vectorized instructions, it does not achieve the performance of the Oracle GraalVM JIT compiler.

The GraalVM CE JIT compiler exhibits suboptimal behavior in these specific cases. For instance, it experiences register spills during the unrolling of the main loop by a factor of 16 (`no_if_branch` scenario). Alternatively, it may refrain from unrolling altogether (`unpredictable_if_branch` scenario) due to conditional comparisons within the loop body.

## LockCoarseningBenchmark

This benchmark tests how the compiler coarsens or merges several adjacent synchronized blocks into one synchronized block, which can potentially reduce the locking overhead. This optimization can be applied when the same lock object is used by multiple methods. However, it's important to note that while compilers can assist in coarsening or merging locks, it's not always guaranteed.

**Note:** This benchmark operates on uncontended code-paths due to only one thread executing the benchmark methods. Consequently, the locks are never inflated to a full monitor. Similar scenarios may occur when utilizing older synchronized Java APIs (e.g., `Vector`, `Stack`, `Hashtable`, `StringBuffer`, etc.), or equivalents.

```
  @Benchmark
  public int nested_synchronized() {
    int result = defaultValue << 1;

    synchronized (this) {             // 1st synchronized
      result += incrementValue;
      synchronized (this) {           // 2nd synchronized
        result += incrementValue;
        ...                           
          synchronized (this) {       // 8th synchronized
            result += incrementValue;
          }
        ...
      }
    }

    return result;
  }
  
  @Benchmark
  public int conditional_nested_method_calls() {
    int result = defaultValue << 1;

    // all conditionals are evaluated to "true"
    if (result > 1 << 5) {             
      result = sum(result);           // 1st synchronized
      if (result > 1 << 5) {           
        result = sum(result);         // 2nd synchronized
        ...                            
          if (result > 1 << 5) {      
            result = sum(result);     // 8th synchronized
          }  
        ...
      }
    }

    return result;
  }
  
  public synchronized int sum(int aValue) {
    return aValue + incrementValue;
  }  
```

Source code: [LockCoarseningBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark.java)

[![LockCoarseningBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/LockCoarseningBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/LockCoarseningBenchmark.svg?raw=true)

### Analysis of nested_synchronized

The analysis below pertains to the `nested_synchronized` method, which is more interesting due to the highest differences in performance.

#### C2 JIT Compiler

The C2 JIT compiler fails to reduce the deoptimization rate and hits a recompilation limit. Consequently, the method is abandoned (i.e., the compilation is disabled), falling back to the Template Interpreter.

```
  <task_queued compile_id='510' method='nested_synchronized ()I' bytes='211' level='3' comment='tiered'/>
  <make_not_compilable level='3' reason='MethodCompilable_not_at_tier' method='nested_synchronized ()I' bytes='211'/>
  
  <task_queued compile_id='513' method='nested_synchronized ()I' bytes='211' comment='tiered'/>
  <make_not_compilable level='4' reason='MethodCompilable_not_at_tier' method='nested_synchronized ()I' bytes='211'/>
```

The breakdown of the hottest regions by source indicates that the Interpreter dominates the execution.

```
  ....[Distribution by Source]........................................................................
    91.17%           interpreter
     3.47%                kernel
     2.94%         perf-6990.map
     1.31%             libjvm.so
     0.90%           c2, level 4
     0.14%             libc.so.6
     0.03%        hsdis-amd64.so
     0.03%  ld-linux-x86-64.so.2
     ...
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler optimizes code by performing lock coarsening, which involves eliminating redundant locks and aggregating the nested locks into a single synchronized block.

```
  0x7f994ad7c83f:   mov    %rsi,%r11
  0x7f994ad7c845:   mov    0x10(%r11),%eax          ; load the field 'defaultValue' into eax
  ...
  0x7f994ad7c84d:   mov    %eax,%r9d                ; copy the value of eax to r9d (i.e., defaultValue)
  0x7f994ad7c850:   shl    %r9d                     ; perform a left shift on the value in r9d by 1
  <--- coarsened section (i.e., the monitor is not inflated; stack/fast-locking) --->
  ...
  0x7f994ad7c886:   mov    0x14(%r11),%r8d          ; load the field 'incrementValue'
  ...
  0x7f994ad7c8c2:   shl    $0x3,%r8d                ; perform a left shift on the value in r8d by 0x3
  0x7f994ad7c8c6:   add    %r8d,%r9d                ; add the values in r8d and r9d and store the result in r9d
  0x7f994ad7c8c9:   mov    %r9d,%eax                ; move the value in r9d to eax
  ; eax stores the result
  <--- end of coarsened section --->
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler is able to compile the entire method, nevertheless it does not merge the locks.

```
  0x7f096323c87f:   mov    %rsi,%r11
  0x7f096323c885:   mov    0x10(%r11),%eax              ; load the field 'defaultValue' into eax
  0x7f096323c88e:   mov    %eax,%r9d                    ; copy the value of %eax to %r9d (i.e., defaultValue)
  0x7f096323c891:   shl    %r9d                         ; perform a left shift on the value in %r9d by 1
  <--- 1st synchronized section (i.e., the monitor is not inflated; stack/fast-locking) --->
  ...
  0x7f096323c8d3:   add    0x14(%r11),%r9d              ; add the field 'incrementValue' to %r9d
  <--- 2nd synchronized section (i.e., the monitor is not inflated; stack/fast-locking) --->
  ...
  0x7f096323c913:   add    0x14(%r11),%r9d              ; add the field 'incrementValue' to r9d
  <--- 3rd synchronized section (i.e., the monitor is not inflated; stack/fast-locking) --->
  ...
  0x7f096323c913:   add    0x14(%r11),%r9d              ; add the field 'incrementValue' to r9d
  <--- 4th synchronized section (i.e., the monitor is not inflated; stack/fast-locking) --->
  ...
  0x7f096323c913:   add    0x14(%r11),%r9d              ; add the field 'incrementValue' to r9d
  <--- 5th synchronized section (i.e., the monitor is not inflated; stack/fast-locking) --->
  ...
  0x7f096323c913:   add    0x14(%r11),%r9d              ; add the field 'incrementValue' to r9d
  <--- 6th synchronized section (i.e., the monitor is not inflated; stack/fast-locking) --->
  ...
  0x7f096323c913:   add    0x14(%r11),%r9d              ; add the field 'incrementValue' to r9d
  <--- 7th synchronized section (i.e., the monitor is not inflated; stack/fast-locking) --->
  ...
  0x7f096323c913:   add    0x14(%r11),%r9d              ; add the field 'incrementValue' to r9d
  <--- 8th synchronized section (i.e., the monitor is not inflated; stack/fast-locking) --->
  ...
  0x7f096323c913:   add    0x14(%r11),%r9d              ; add the field 'incrementValue' to r9d
  ; r9d stores the result
```

### Analysis of conditional_nested_method_calls

The analysis below pertains to the `conditional_nested_method_calls` method.

#### C2 JIT Compiler

The C2 JIT compiler successfully inlines the `sum` methods in the caller and compiles the entire method. However, it does not merge certain locks within the compiled code.

```
  0x7fd3804f941d:   mov    0x10(%rsi),%r13d             ; load the 'defaultValue' field into r13d
  0x7fd3804f9421:   shl    %r13d                        ; left shift the value in r13d by 1
  0x7fd3804f9424:   cmp    $0x20,%r13d                  ; compare r13d against the value '1 << 5'
  0x7fd3804f9428:   jle    0x7fd3804f9f37               ; jump if r13d is less than or equal to '1 << 5'
  ...
  <--- caller 'sum' method inlined --->
  <--- 1st synchronized section (i.e., the monitor is not inflated; stack/fast-locking) --->                                                                                                                                                                                                                       
  0x7fd3804f9496:   add    0x14(%rbp),%r13d             ; add the 'incrementValue' field to r13d
  ...
  0x7fd3804f9534:   cmp    $0x20,%r13d
  0x7fd3804f9538:   jle    0x7fd3804f9f50               ; jump if r13d is less than or equal to '1 << 5'
  <--- caller 'sum' method inlined --->
  <--- 2nd synchronized section (i.e., the monitor is not inflated; stack/fast-locking) --->
  0x7fd3804f95a8:   add    0x14(%rbp),%r13d             ; add the 'incrementValue' field to r13d
  ...
  <--- similar pattern for the 3rd, 4th, 5th, 6th, 7th, and 8th synchronized sections -->
  ...
  ; r13d stores the result of the main loop
  0x7fd3804f9cc6:   mov    %r13d,%eax                   ; move the sum result into eax
```

As a side note, the default settings in `-prof perfasm` display the hottest regions around the `lock cmpxchg` (compare-and-set) instructions, but this may not assemble the entire compiled method. By running `-prof perfasm:mergeMargin=1024` (default value is 32), all hot regions can be aggregated to provide a comprehensive view.
Here are further details about the [mergeMargin](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/profile/AbstractPerfAsmProfiler.java#L120) option.

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler inlines the `sum` method calls and coarsens the locks.

```
  0x7ffa1ad7dc3f:   mov    %rsi,%r11
  0x7ffa1ad7dc42:   mov    0x10(%r11),%eax          ; load the field 'defaultValue' into eax
  ...
  0x7ffa1ad7dc46:   mov    %eax,%r8d                ; copy the value of eax to r8d (i.e., 'defaultValue')
  0x7ffa1ad7dc49:   shl    %r8d                     ; perform a left shift on the value in r8d by 1
  <--- coarsened section --->
  0x7ffa1ad7dc4c:   cmp    $0x21,%r8d               ; compare r8d against value '1 << 5 + 1'
  0x7ffa1ad7dc50:   jl     0x7ffa1ad7deed           ; jump if r8d is less
  ...
  0x7ffa1ad7dc90:   mov    0x14(%r11),%r10d         ; get field 'incrementValue'
  0x7ffa1ad7dc94:   mov    %r8d,%eax                ; eax = 'defaultValue'
  0x7ffa1ad7dc97:   add    %r10d,%eax               ; eax = eax + r10d
  ...
  0x7ffa1ad7dca0:   cmp    $0x21,%eax               ; compare eax against value '1 << 5 + 1'
  0x7ffa1ad7dca3:   jl     0x7ffa1ad7dec7           ; jump if eax is less
  0x7ffa1ad7dca9:   add    %r10d,%eax               ; eax = eax + r10d
  <--- similar pattern for the 3rd, 4th, 5th, 6th, 7th, and 8th additions -->
  ; eax stores the result
  ...
  <--- end of coarsened section --->
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler utilizes a similar approach to the Oracle GraalVM JIT compiler in this benchmark.

### Conclusions

The Oracle GraalVM JIT compiler triggers lock coarsening and eliminates redundant locks, including the inlining of target method invocations. These optimizations lead to the shortest overall execution time.

The C2 JIT compiler exhibits limitations in the `nested_synchronized` scenario, leading it to _bail out_ to the Template Interpreter. 

Within the `conditional_nested_method_calls`, although the callee method is inlined at various call sites, the failure to merge the locks remains an issue. Consequently, its performance tends to be lower even than the GraalVM CE JIT compiler, in this benchmark.

## LockElisionBenchmark

Test how the compiler can elide/remove several adjacent locking blocks on non-shared objects, thus reducing the locking overhead.
Synchronization on non-shared objects is pointless, and the runtime does not have to do anything in such cases.

```
  private final int DEPTH = 8;

  @Benchmark
  public int nested_synchronized() {
    int result = defaultValue << 1;

    Object lock = new Object();

    synchronized (lock) {                   // 1st synchronized
      result += incrementValue;
      synchronized (lock) {                 // 1st synchronized
        result += incrementValue;
        ...
          synchronized (lock) {             // 8th synchronized 
            result += incrementValue;
          }
        ...
      }
    }

    return result;
  }
  
  @Benchmark
  public int recursive_method_calls() {
    int result = defaultValue << 1;
    result = recursiveSum(result, DEPTH);
    return result;
  }
  
  public int recursiveSum(int aValue, int depth) {
    Object lock = new Object();
    synchronized (lock) {
      if (depth == 0) {
        return aValue;
      }
      return incrementValue + recursiveSum(aValue, depth - 1);
    }
  }    
```

Source code: [LockElisionBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/LockElisionBenchmark.java)

[![LockElisionBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/LockElisionBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/LockElisionBenchmark.svg?raw=true)

### Analysis

### Analysis of nested_synchronized

The analysis below pertains to the `nested_synchronized` method, which is more interesting due to the highest differences in performance.

#### C2 JIT Compiler

The C2 JIT compiler fails to reduce the deoptimization rate and hits a recompilation limit. Consequently, the method is abandoned (i.e., the compilation is disabled), falling back to the Template Interpreter. This is the same limitation as in the case of `LockCoarseningBenchmark`.

The breakdown of the hottest regions by source indicates that the Interpreter dominates the execution.

```
  ....[Distribution by Source]........................................................................
    89.45%           interpreter
     4.18%         perf-7796.map
     3.69%                kernel
     1.22%           c2, level 4
     1.17%             libjvm.so
     0.21%             libc.so.6
     0.04%        hsdis-amd64.so
     0.01%  ld-linux-x86-64.so.2
     ...
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler optimizes code by removing the locks, and further optimizing the additions using shift operations, thereby performing strength reduction optimizations.

```
  0x7f9816d7e73a:   mov    0x10(%rsi),%eax        ; load the value of the 'defaultValue' field into eax
  0x7f9816d7e73d:   mov    0x14(%rsi),%r10d       ; load the value of the 'incrementValue' field into r10d
  0x7f9816d7e741:   shl    %eax                   ; perform a left shift on the value in eax by 1 (eax = eax << 1)
  0x7f9816d7e743:   shl    $0x3,%r10d             ; perform a left shift on the value in r10d by 3 (r10d = r10d << 3)
  0x7f9816d7e747:   add    %r10d,%eax             ; add the value in r10d to eax (eax = eax + r10d)
  ; eax stores the result
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler utilizes a similar approach to the Oracle GraalVM JIT compiler in this benchmark.

### Analysis of recursive_method_calls

#### C2 JIT Compiler

The C2 JIT compiler is capable of devirtualizing `recursiveSum` virtual calls and performs partial inlining up to a depth of 2.

```
  0x7f1290636b5a:   mov    0x14(%rsi),%ebp         ; load the value of the 'incrementValue' field into ebp
  0x7f1290636b5d:   mov    0x10(%rsi),%edx         ; load the value of the 'defaultValue' field into edx
  0x7f1290636b60:   shl    %edx                    ; perform a left shift on the value in edx by 1 (edx = 'defaultValue' << 1)
  0x7f1290636b62:   mov    $0x6,%ecx               ; move the value 0x6 into ecx
  0x7f1290636b67:   call   0x7f1290636740          ; <--- call to recursiveSum two layers deep
                                                   ; parameters passed: edx (result), ecx (stack depth)
                                                   ; - LockElisionBenchmark::recursiveSum@31 (line 227)
                                                   ; - LockElisionBenchmark::recursiveSum@31 (line 227)
                                                   ; - LockElisionBenchmark::recursive_method_calls@11 (line 108)
                                                   ; {optimized virtual_call}
  0x7f1290636b74:   add    %ebp,%eax               ; add 'incrementValue' to eax
  0x7f1290636b76:   add    %ebp,%eax               ; add 'incrementValue' to eax
  ; eax stores the final result
```

The `recursiveSum` is partially inlined along with a recursive call to itself, to manage certain recursive depth scenarios.

```
   recursiveSum()

   ↗ 0x7f1290636740:   mov    %eax,-0x14000(%rsp)
   │ 0x7f129063675e:   mov    0x14(%rsi),%ebp          ; load the value of the 'incrementValue' field into ebp
   │ 0x7f1290636761:   cmp    $0x1,%ecx                ; compare the value in ecx with 0x1
  ╭│ 0x7f1290636764:   je     0x7f1290636793           ; jump to 0x7f1290636793 if equal
  ││ 0x7f1290636766:   add    $0xfffffffe,%ecx         ; add -2 (in two's complement) to ecx, effectively decrementing it by 2
  │╰ 0x7f129063676b:   call   0x7f1290636740           ; <--- recursive call to itself
  │                                                    ; invokevirtual recursiveSum
  │                                                    ; - LockElisionBenchmark::recursiveSum@31 (line 227)
  │                                                    ; - LockElisionBenchmark::recursiveSum@31 (line 227)
  │                                                    ; {optimized virtual_call}
  │  0x7f1290636778:   add    %ebp,%eax                ; add 'incrementValue' to eax
  │↗ 0x7f129063677a:   add    %ebp,%eax                ; add 'incrementValue' to eax
  ││ ...
  ││ 0x7f129063678e:   ret                             ; return from the function
  ││ ...
  ↘│ 0x7f1290636793:   mov    %edx,%eax                ; move 'defaultValue' into eax
   ╰ 0x7f1290636795:   jmp    0x7f129063677a           ; jump to 0x7f129063677a (continuation)
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler eliminates all the virtual calls and further optimizes the code by eliminating locks and performing strength reduction optimizations to calculate the final result.

```
  0x7fa406d7c5ba:   mov    0x10(%rsi),%eax              ; load the value of the 'defaultValue' field into eax
  0x7fa406d7c5bd:   mov    0x14(%rsi),%r10d             ; load the value of the 'incrementValue' field into r10d
  0x7fa406d7c5c1:   shl    %eax                         ; perform a left shift on the value in eax by 1 (eax = eax << 1)
  0x7fa406d7c5c3:   shl    $0x3,%r10d                   ; perform a left shift on the value in r10d by 3 (r10d = r10d << 3)
  0x7fa406d7c5c7:   add    %r10d,%eax                   ; add the value in r10d to eax (eax = eax + r10d)
  ; eax stores the result
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT is capable of devirtualizing `recursiveSum` virtual calls and performs partial inlining up to a depth of 6.

```
  0x7f977318f6df:   mov    0x10(%rsi),%edx          ; load the value of the 'defaultValue' field into edx
  0x7f977318f6e2:   mov    0x14(%rsi),%r10d         ; load the value of the 'incrementValue' field into r10d
  0x7f977318f6e6:   shl    %edx                     ; perform a left shift on the value in edx by 1 (edx = 'defaultValue' << 1)
  0x7f977318f6e8:   mov    $0x2,%ecx                ; move the value 0x2 into ecx
  0x7f977318f6ed:   mov    %r10d,0x4(%rsp)          ; store %r10d (i.e., 'incrementValue') at stack address + 0x4
  0x7f977318f6f3:   call   0x7f977318ee40           ; <--- call to recursiveSum six layers deep
                                                    ; invokevirtual recursiveSum
                                                    ; - LockElisionBenchmark::recursiveSum@31 (line 227)
                                                    ; - LockElisionBenchmark::recursiveSum@31 (line 227)
                                                    ; - LockElisionBenchmark::recursiveSum@31 (line 227)
                                                    ; - LockElisionBenchmark::recursiveSum@31 (line 227)
                                                    ; - LockElisionBenchmark::recursiveSum@31 (line 227)
                                                    ; - LockElisionBenchmark::recursiveSum@31 (line 227)
                                                    ; - LockElisionBenchmark::recursive_method_calls@11 (line 108)
                                                    ; {optimized virtual_call}
  0x7f977318f700:   mov    0x4(%rsp),%r10d          ; get back the r10d (i.e., 'incrementValue') from the stack + 0x4 address
  0x7f977318f705:   mov    %r10d,%r11d              ; r11d = 'incrementValue'
  0x7f977318f708:   shl    $0x2,%r11d               ; r11d = 'incrementValue' << 2
  0x7f977318f70c:   shl    %r10d                    ; r10d = 'incrementValue' << 1
  0x7f977318f70f:   add    %r10d,%r11d              ; r11d = r10d + r11d
  0x7f977318f712:   add    %r11d,%eax               ; eax = eax + r11d
  ; eax stores the result
```

The `recursiveSum` is partially inlined along with a recursive call to itself, to manage certain recursive depth scenarios.

```
   recursiveSum()
    
   ↗ 0x7f977318ee40:   mov    %eax,-0x14000(%rsp)
   │ 0x7f977318ee5f:   mov    0x14(%rsi),%r10d      ; load 'incrementValue' field into %r10d
   │ ...
   │ 0x7f977318ee6c:   cmp    $0x2,%ecx             ; compare %ecx with 0x2
  ╭│ 0x7f977318ee6f:   jge    0x7f977318ef14        ; jump if greater or equal
  ││ ...
  ││ 0x7f977318eea7:   jmp    0x7f977318ef26
  ││ 0x7f977318eeac:   mov    %r10d,0x4(%rsp)       ; store %r10d (i.e., 'incrementValue') at stack address + 0x4
  ││ ...
  │╰ 0x7f977318eeb7:   call   0x7f977318ee40        ; <--- recursive call to itself
  │                                                 ; invokevirtual recursiveSum
  │                                                 ; - LockElisionBenchmark::recursiveSum@31 (line 227)
  │                                                 ; - LockElisionBenchmark::recursiveSum@31 (line 227)
  │                                                 ; - LockElisionBenchmark::recursiveSum@31 (line 227)
  │                                                 ; - LockElisionBenchmark::recursiveSum@31 (line 227)
  │                                                 ; - LockElisionBenchmark::recursiveSum@31 (line 227)
  │                                                 ; - LockElisionBenchmark::recursiveSum@31 (line 227)
  │                                                 ; {optimized virtual_call}  
  │  ...
  │↗ 0x7f977318eed4:   add    0x4(%rsp),%eax        ; add 'incrementValue' to %eax
  ││ 0x7f977318eed8:   mov    0x4(%rsp),%r10d       ; move 'incrementValue' to %r10d
  ││ 0x7f977318eedd:   add    %r10d,%eax            ; eax = eax + r10d
  ││ ...
  ││ 0x7f977318eef6:   ret
  ││ ...
  ↘│ 0x7f977318ef14:   mov    %edx,%eax             ; move 'defaultValue' into %eax
   │ 0x7f977318ef16:   mov    %r10d,0x4(%rsp)       ; store 'incrementValue' at stack + 0x4
   ╰ 0x7f977318ef1b:   jmp    0x7f977318eed4        ; jump to the start of the addition block
     ...
```

### Conclusions

The Oracle GraalVM JIT compiler removes the locks and inlines the target method invocations. These optimizations lead to the shortest overall execution time.

The C2 JIT compiler exhibits limitations in the `nested_synchronized` scenario, leading it to _bail out_ to the Template Interpreter. 

Within the `recursive_method_calls`, although the recursive callee method is partially inlined, its performance tends to be slower even than the GraalVM CE JIT compiler that does a better job of inlining the callee recursive calls.

## LoopFissionBenchmark

Loop fission breaks a larger loop body into smaller loops. Benefits of loop fission:
- enable vectorization: if one loop is not vectorizable, splitting the loop into two loops, one of which is vectorizable and the other which is not can help the performance
- avoid register spilling: in case of large loops with many variables, loop distribution can be used to avoid register spilling
- better utilization of data locality (if by splitting one of the loops becomes also interchangeable)

- This optimization is most efficient in multicore processors that can split a task into multiple tasks for each processor.

Loop fission is the opposite of loop fusion. Although loop fusion is useful to reduce memory loads, it can be counter-productive to have unrelated operations jammed together into a single loop nest.

```
  @Benchmark
  public void initial_loop() {
    // Initial loop with explicit broken loop vectorization (i.e., read-after-write)
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + C[i];
      B[i] = A[i] + C[i];
    }
  }

  @Benchmark
  public void manual_loop_fission() {
    // Loop 1: Breaks loop vectorization (i.e., read-after-write)
    for (int i = 1; i < size; i++) { // loop 1
      A[i] = A[i - 1] + C[i];            
    }

    // Loop 2: Able to be vectorized
    for (int i = 1; i < size; i++) { // loop 2
      B[i] = A[i] + C[i];
    }
  }
```

Source code: [LoopFissionBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/LoopFissionBenchmark.java)

[![LoopFissionBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/LoopFissionBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/LoopFissionBenchmark.svg?raw=true)

### Analysis of manual_loop_fission

The analysis below pertains to the `manual_loop_fission` method, which is more interesting due to the differences in performance.

#### C2 JIT Compiler

The C2 JIT compiler unrolls `loop 1` by a factor of 8 using scalar instructions, handling 8 additions per loop cycle within the `main loop 1`:

```
  ...
  0x7f820c4f9c0f:   mov    $0x2,%ebx                        ; initialize loop counter
  ...
  
  Main loop 1 (A[i] = A[i - 1] + C[i])
  
  ↗ 0x7f820c4f9c40:   mov    0x10(%r8,%rbx,4),%edx          ; load 'C[i]' into register edx
  │ 0x7f820c4f9c45:   add    0xc(%r9,%rbx,4),%edx           ; add 'A[i-1]' to register edx
  │ 0x7f820c4f9c4a:   mov    %edx,0x10(%r9,%rbx,4)          ; store edx ('A[i-1] + C[i]') into 'A[i]'
  │ 0x7f820c4f9c4f:   add    0x14(%r8,%rbx,4),%edx          ; add 'C[i+1]' to register edx
  │ 0x7f820c4f9c54:   mov    %edx,0x14(%r9,%rbx,4)          ; store edx ('A[i-1] + C[i] + C[i+1]') into 'A[i+1]'
  │ 0x7f820c4f9c59:   add    0x18(%r8,%rbx,4),%edx          ; add 'C[i+2]' to register edx
  │ 0x7f820c4f9c5e:   mov    %edx,0x18(%r9,%rbx,4)          ; store edx ('A[i-1] + C[i] + C[i+1] + C[i+2]') into 'A[i+2]'
  │ ...
  │ <-- Similar pattern for processing the next elements -->
  │ ...
  │ 0x7f820c4f9c95:   add    $0x8,%ebx                      ; increment loop counter by 8
  │ 0x7f820c4f9c98:   cmp    %esi,%ebx                      ; compare counter against loop limit
  ╰ 0x7f820c4f9c9a:   jl     0x7f820c4f9c40                 ; jump back if less
  
   <-- the post loop 1 processes the remaining elements individually -->
```

And for `loop 2` the C2 JIT compiler employs vectorized instructions that operate on 256-bit wide AVX (Advanced Vector Extensions) registers. It handles 64 additions per loop cycle within the `main loop 2`:

```
  // Main loop 2 (B[i] = A[i] + C[i])
  
  ↗ 0x7f820c4f9d70:   vmovdqu 0x10(%r8,%rbx,4),%ymm0        ; load 8 integers from array 'C' into ymm0
  │ 0x7f820c4f9d77:   vpaddd 0x10(%r9,%rbx,4),%ymm0,%ymm0   ; add 8 integers from array 'A' to ymm0
  │ 0x7f820c4f9d7e:   vmovdqu %ymm0,0x10(%r11,%rbx,4)       ; store the result in 'B'
  │ ...
  │ <-- similar pattern for processing the next elements -->
  │ ...
  │ 0x7f820c4f9e3c:   add    $0x40,%ebx                     ; increment loop counter by 0x40 (processing 64 integers)
  │ 0x7f820c4f9e40:   cmp    %ecx,%ebx                      ; compare counter against loop limit
  ╰ 0x7f820c4f9e42:   jl     0x7f820c4f9d70                 ; jump back if the loop counter is less than the limit
  
   <-- the first post loop 2 uses vectorized instructions to process 8 elements per loop cycle -->
   <-- the second post loop 2 processes the remaining elements individually -->
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler employs almost identical optimization patterns to the C2 JIT compiler for this scenario. The only minor difference is that it handles 8 additions per loop cycle within the `main loop 2`, as opposed to 64.

```
  // Main loop 2 (B[i] = A[i] + C[i])
  
  ↗ 0x7fd86ad9d040:   vmovdqu (%r9,%rbx,4),%ymm0           ; load 8 integers from array 'A' into ymm0
  │ 0x7fd86ad9d046:   vmovdqu (%r10,%rbx,4),%ymm1          ; load 8 integers from array 'C' into ymm1
  │ 0x7fd86ad9d04c:   vpaddd %ymm1,%ymm0,%ymm0             ; add 8 integers to ymm0
  │ 0x7fd86ad9d050:   vmovdqu %ymm0,(%r11,%rbx,4)          ; store the result in 'B'
  │ 0x7fd86ad9d056:   lea    0x8(%rbx),%rbx                ; increment loop counter by 8 (processing 8 integers)
  │ 0x7fd86ad9d05a:   cmp    %rcx,%rbx                     ; compare counter against loop limit
  ╰ 0x7fd86ad9d05d:   jle    0x7fd86ad9d040                ; jump back if the loop counter is less than the limit
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler unrolls the `main loop 2` by a factor of 8, but it abstains from using any vectorized instructions.

```
  // Main loop 2 (B[i] = A[i] + C[i])
  
  ↗ 0x7ff4c319d840:   mov    0x10(%rcx,%r11,4),%r8d       ; load 'C[i]' into register r8d
  │ 0x7ff4c319d845:   add    0x10(%r9,%r11,4),%r8d        ; add 'A[i]' into register r8d
  │ 0x7ff4c319d84a:   mov    %r8d,0x10(%r13,%r11,4)       ; store the result ('A[i] + C[i]') in 'B[i]'
  │ 0x7ff4c319d84f:   movslq %r11d,%r8                    ; extend loop counter to 64-bit in r8
  │ 0x7ff4c319d852:   mov    0x14(%rcx,%r8,4),%edi        ; load 'C[i+1]' into register edi
  │ 0x7ff4c319d857:   add    0x14(%r9,%r8,4),%edi         ; add 'A[i+1]' into register edi
  │ 0x7ff4c319d85c:   mov    %edi,0x14(%r13,%r8,4)        ; store the result ('A[i+1] + C[i+1]') in 'B[i+1]'
  │ ...
  │ 0x7ff4c319d8bb:   lea    0x8(%r11),%r11d              ; increment loop counter by 8 (processing 8 integers)
  │ 0x7ff4c319d8c0:   cmp    %r11d,%ebx                   ; compare loop counter against loop limit
  ╰ 0x7ff4c319d8c3:   jg     0x7ff4c319d840               ; jump back if loop counter is greater than loop limit
```

### Conclusions

None of the compilers implement this optimization. Moreover, in this benchmark, it appears that `manual_loop_fission` brings significant benefits as opposed to the default `initial_loop` since the `loop 2` becomes vectorizable. This is also a useful pattern to apply in normal application code.

The C2 JIT compiler and Oracle GraalVM JIT compiler demonstrate similar performance characteristics. However, the GraalVM CE JIT compiler does not vectorize the second loop (when no data dependencies are present), resulting in lower performance than the other two compilers.

## LoopFusionBenchmark

The benchmark assesses if the compiler triggers loop fusion, an optimization aimed to merge the adjacent loops into one loop to reduce the loop overhead and improve run-time performance.

```
  @Benchmark
  public void initial_loops() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + B[i];
    }

    for (int i = 1; i < size; i++) {
      B[i] = B[i - 1] + A[i];
    }
  }
  
  @Benchmark
  public void manual_loops_fusion() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + B[i];
      B[i] = B[i - 1] + A[i];
    }
  }  
```

Source code: [LoopFusionBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/LoopFusionBenchmark.java)

[![LoopFusionBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/LoopFusionBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/LoopFusionBenchmark.svg?raw=true)

### Analysis of initial_loops

The analysis below pertains to the `initial_loops` method, which is more interesting due to the differences in performance.

#### C2 JIT Compiler and GraalVM CE JIT Compiler

Both the C2 JIT and Oracle GraalVM JIT compilers unroll the main loop by a factor of 8 and handle the dependent load/store operations in a comparable manner. For instance, the following code snippet illustrates a main loop optimized by the C2 JIT:

```
  // Main loop
    
    0x7f1534637522:   mov    $0x2,%esi                   ; initialize loop counter  
    ...
  ↗ 0x7f1534637541:   mov    0x10(%r8,%rsi,4),%r10d      ; load array2[i] into register r10d
  │ 0x7f1534637546:   add    0xc(%r9,%rsi,4),%r10d       ; add array1[i - 1] to register r10d
  │ 0x7f153463754b:   mov    %r10d,0x10(%r9,%rsi,4)      ; store r10d (array1[i - 1] + array2[i]) into array1[i]
  │ 0x7f1534637550:   add    0x14(%r8,%rsi,4),%r10d      ; add array2[i + 1] to register r10d
  │ 0x7f1534637555:   mov    %r10d,0x14(%r9,%rsi,4)      ; store r10d (array1[i - 1] + array2[i] + array2[i + 1]) into array1[i + 1]
  │ ...
  │ 0x7f1534637596:   add    $0x8,%esi                   ; increment loop counter by 8
  │ 0x7f1534637599:   cmp    %eax,%esi                   ; compare loop counter against eax
  ╰ 0x7f153463759b:   jl     0x7f1534637541              ; jump back to loop if less
```

#### GraalVM CE JIT Compiler

Despite using an unrolling factor of 8, akin to the C2 JIT or Oracle GraalVM JIT compiler, the GraalVM CE JIT compiler produces less optimal code due to the additional load instructions.

```
  // Main loop

    0x7f96ef24270a:   mov    $0x2,%r11d                  ; initialize loop counter
    ...  
  ↗ 0x7f96ef242720:   mov    0x10(%r9,%r11,4),%r8d       ; load array2[i] into register r8d
  │ 0x7f96ef242725:   movslq %r11d,%rdi                  ; sign-extend loop counter to rdi
  │ 0x7f96ef242728:   add    0xc(%rcx,%rdi,4),%r8d       ; load array1[i - 1] into register r8d
  │ 0x7f96ef24272d:   mov    %r8d,0x10(%rcx,%r11,4)      ; store array1[i] = array1[i - 1] + array2[i]
  │ 0x7f96ef242732:   mov    0x14(%r9,%rdi,4),%r8d       ; load array2[i + 1] into register r8d
  │ 0x7f96ef242737:   add    0x10(%rcx,%r11,4),%r8d      ; load array1[i] into register r8d
  │ 0x7f96ef24273c:   mov    %r8d,0x14(%rcx,%rdi,4)      ; store array1[i + 1] = array1[i] + array2[i + 1]
  │ 0x7f96ef242741:   mov    0x18(%r9,%rdi,4),%r8d       ; load array2[i + 2] into register r8d
  │ 0x7f96ef242746:   add    0x14(%rcx,%rdi,4),%r8d      ; load array1[i + 1] into register r8d
  │ 0x7f96ef24274b:   mov    %r8d,0x18(%rcx,%rdi,4)      ; store array1[i + 2] = array1[i + 1] + array2[i + 2]
  │ ...
  │ 0x7f96ef24279b:   lea    0x8(%r11),%r11d             ; increment loop counter by 8
  │ 0x7f96ef2427a0:   cmp    %r11d,%ebx                  ; compare ebx against loop counter
  ╰ 0x7f96ef2427a3:   jg     0x7f96ef242720              ; jump loop back if greater
```

### Conclusions

None of the compilers has implemented this optimization. Moreover, in this benchmark, it appears that `manual_loops_fusion` does not yield significant benefits. In fact, due to the data dependency between array elements within a loop cycle, `manual_loops_fusion` becomes less optimal rather than improving performance, as opposed to the previous `LoopFissionBenchmark` (where there are data dependencies within the loop cycles).

The C2 JIT compiler and Oracle GraalVM JIT compiler demonstrate similar performance characteristics. However, the GraalVM CE JIT compiler tends to generate less optimal code, resulting in more frequent load and store instructions.

## LoopReductionBenchmark

Loop reduction (or loop reduce) benchmark tests if a loop could be reduced by the number of additions within that loop.
This optimization is based on the induction variable to strength the additions.

**Note:** From a compiler point of view, this benchmark is the same as `CanonicalizeInductionVariableBenchmark`.

```
  @Param({"1048576"})
  private int iterations;

  @Param({"128"})
  private int offset;

  @Benchmark
  public void initial_loop() {
    auto_reduction(iterations, offset);
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int auto_reduction(final int iterations, int accumulator) {
    for (int i = 0; i < iterations; ++i) {
      accumulator++;
    }
    return accumulator;
  }
```

Source code: [LoopReductionBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/LoopReductionBenchmark.java)

[![LoopReductionBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/LoopReductionBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/LoopReductionBenchmark.svg?raw=true)

### Analysis of initial_loop

The analysis below pertains to the `initial_loop` method, which is more interesting due to the differences in performance.

#### C2 JIT Compiler

The C2 JIT compiler devirtualizes the `auto_reduction` call and performs loop reduction.

```
  initial_loop()
  
  0x7fede06381da:   mov    0xc(%rsi),%edx             ; load the 'iterations' value into edx
  0x7fede06381dd:   mov    0x10(%rsi),%ecx            ; load the 'offset' value into ecx
  0x7fede06381e3:   call   0x7fede0637ea0             ; invokevirtual auto_reduction
                                                      ; - LoopReductionBenchmark::initial_loop@9 (line 64)
                                                      ; {optimized virtual_call}
```

```
  auto_reduction() w/ loop reduction
  
       0x7fede0637eba:   test   %edx,%edx             ; check if edx ('iterations') is zero
  ╭    0x7fede0637ebc:   jle    0x7fede0637ee6        ; jump if edx ('iterations') is less than or equal to zero
  │    0x7fede0637ebe:   mov    $0x1,%r10d            ; load 0x1 into r10d
  │    0x7fede0637ec4:   cmp    %edx,%r10d            ; compare r10d (0x1) with edx ('iterations')
  │╭   0x7fede0637ec7:   jge    0x7fede0637ee0        ; jump if greater than or equal
  ││   0x7fede0637ec9:   add    %ecx,%edx             ; add ecx ('offset') to edx ('iterations')
  ││↗  0x7fede0637ecb:   mov    %edx,%eax             ; move the result to eax
  │││  ...
  │││↗ 0x7fede0637ecd:   ret
  ││││ ...
  │↘││ 0x7fede0637ee0:   mov    %ecx,%edx             ; move ecx ('offset') into edx
  │ ││ 0x7fede0637ee2:   inc    %edx                  ; increment edx ('offset')
  │ ╰│ 0x7fede0637ee4:   jmp    0x7fede0637ecb
  ↘  │ 0x7fede0637ee6:   mov    %ecx,%eax             ; move ecx ('offset') into eax
     ╰ 0x7fede0637ee8:   jmp    0x7fede0637ecd        ; jump to return
```

#### Oracle GraalVM JIT Compiler

Similarly, the Oracle GraalVM JIT devirtualizes the `auto_reduction` call and performs loop reduction but with less jumps instructions than C2 JIT compiler.

```
  initial_loop()
  
  0x7f4d82d7fb5f:   mov    0x10(%rsi),%ecx     ; load the 'offset' value into ecx
  0x7f4d82d7fb62:   mov    0xc(%rsi),%edx      ; load the 'iterations' value into edx
  0x7f4d82d7fb67:   call   0x7f4d82d7f820      ; invokevirtual auto_reduction
                                               ; - LoopReductionBenchmark::initial_loop@9 (line 64)
                                               ; {optimized virtual_call}
```

```
  auto_reduction() w/ loop reduction
  
  0x7f4d82d7f83a:   test   %edx,%edx           ; check if edx ('iterations') is zero
  0x7f4d82d7f83c:   mov    $0x0,%eax           ; eax = 0x0
  0x7f4d82d7f841:   cmovl  %eax,%edx           ; move eax (0x0) to edx if 'iterations' is zero
  0x7f4d82d7f844:   add    %edx,%ecx           ; add edx to ecx ('offset')
  0x7f4d82d7f846:   mov    %ecx,%eax           ; move the result to eax
  ...
  0x7f4d82d7f859:   ret
```

#### GraalVM CE JIT Compiler

The `auto_reduction` generated code by the GraalVM CE JIT is abysmal.

```
  auto_reduction()

      0x7f16c31979c0:  cmp    $0x1,%edx              ; compare edx ('iterations') against 0x1
  ╭   0x7f16c31979c3:  jl     0x7f16c3197a6e         ; jump if edx ('iterations') is less than 0x1
  │   ...
  │╭  0x7f16c31979e0:  jmp    0x7f16c3197a05 
  ││↗ 0x7f16c3197a00:  inc    %ecx                   ; increment ecx ('offset')
  │││ 0x7f16c3197a02:  inc    %r10d                  ; increment loop counter
  │↘│ 0x7f16c3197a05:  cmp    %r10d,%eax             ; compare against eax ('iterations' or 0x2)
  │ ╰ 0x7f16c3197a08:  jg     0x7f16c3197a00         ; jump back if greater
  │   ...
  │╭  0x7f16c3197a13:  jmp    0x7f16c3197a28
  ││↗ 0x7f16c3197a20:  lea    0x10(%r11),%r11d
  │││ 0x7f16c3197a24:  lea    0x10(%r10),%r10d
  │↘│ 0x7f16c3197a28:  cmp    %r11d,%eax
  │ ╰ 0x7f16c3197a2b:  jg     0x7f16c3197a20
  │   ...
  │╭  0x7f16c3197a2d:  jmp    0x7f16c3197a50
  ││↗ 0x7f16c3197a40:  inc    %r11d                  ; increment r11d
  │││ 0x7f16c3197a43:  inc    %r10d                  ; increment r10d
  │↘│ 0x7f16c3197a50:  cmp    %r11d,%edx             ; compare edx ('iterations') against r11d
  │ ╰ 0x7f16c3197a53:  jg     0x7f16c3197a40         ; jump back if greater
  │↗  0x7f16c3197a55:  mov    %r10d,%eax             ; move r10d to eax
  ││  ...
  ││  0x7f16c3197a6d:  ret
  ││  ...
  ↘│  0x7f16c3197a6e:  mov    %ecx,%r10d             ; move ecx ('offset') to r10d
   ╰  0x7f16c3197a71:  jmp    0x7f16c3197a55         ; jump back
```

### Conclusions

The C2 JIT compiler and the Oracle GraalVM JIT compiler offer similar optimization patterns, hence achieving similar response times.

The GraalVM CE JIT compiler exhibits lower performance (i.e., poor optimizations) in this benchmark.

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

Source code: [MandelbrotVectorApiBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/vector/MandelbrotVectorApiBenchmark.java)

[![MandelbrotVectorApiBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/MandelbrotVectorApiBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/MandelbrotVectorApiBenchmark.svg?raw=true)

### Analysis of vectorized

The `baseline` benchmark performs equally well on all three JIT compilers.
The `vectorized` benchmark performs differently between the JIT compilers and the same trend is kept regardless of the
number of iterations or used vector size.

#### C2 JIT Compiler

The C2 JIT compiler implements all the Vector API compiler intrinsics required to vectorize the benchmark body.
It also unrolls the inner while loop of the benchmark by a factor of 4.

```
  ...
  ; more vectorized code above 
  ...                                                       
  0x7f99386729e9:   vblendvps %ymm15,%ymm4,%ymm13,%ymm13    ; vectorized code
  0x7f99386729ef:   vtestps %ymm15,%ymm15                   ; if condition check of the inner while loop
  0x7f99386729f4:   je     0x7f9938672805                   ; break if true. Jump to inner for loop
  0x7f99386729fa:   add    $0x4,%r8d                        ; add while loop unroll factor
  0x7f99386729fe:   xchg   %ax,%ax                          ; nop
  0x7f9938672a00:   cmp    %esi,%r8d                        ; compare against loop bound
  0x7f9938672a03:   jl     0x7f9938672900                   ; jump back to the while loop start if loop condition is true
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler also implements all the Vector API compiler intrinsics required to vectorize the benchmark
body and generates similar assembly instructions as the C2 JIT compiler. One difference that could also account for the
performance difference is that the Oracle GraalVM JIT compiler does not unroll the inner while loop.

```
  ...
  ; more vectorized code above 
  ...                                                       
  0x7f8626da4400:   inc    %r14d                            ; increment the while loop induction variable by one
  0x7f8626da4403:   cmp    %r14d,%r11d                      ; compare against loop bound
  0x7f8626da4406:   jle    0x7f8626da4495                   ; exit loop if loop condition is false
  0x7f8626da440c:   vmovupd %ymm13,0x10(%rsp)               ; loop body contains vectorized code
  ...                                                       ; more vectorized code below
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler does not implement the Vector API compiler intrinsics required to vectorize the benchmark
body and therefore falls back to the Java implementation of the Vector API. This results in a significant performance
degradation and can be seen by looking at the hottest methods in the benchmark after inlining.

```
  43.54%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x7f61f80d0e80::apply, version 2, compile id 1265 
  27.72%       jvmci, level 4  jdk.incubator.vector.DoubleVector$$Lambda.0x7f61f80d18d8::apply, version 2, compile id 1266 
  16.66%       jvmci, level 4  MandelbrotVectorApiBenchmark::vectorized, version 5, compile id 1276
```

### Conclusions

Both C2 and the Oracle GraalVM JIT compilers are able to vectorize the benchmark body and perform close in performance
and better than the `baseline` benchmark.

The GraalVM CE JIT compiler is not (yet) able to vectorize the benchmark body and falls back to the Java implementation of the Vector API.

## SepiaVectorApiBenchmark

This benchmark is similar to the `MandelbrotVectorApiBenchmark` benchmark in that it tests the performance of Project
Panama's Vector API. In this benchmark, the Vector API is used to apply a sepia filter to an input image.

In the `baseline`, the benchmark applies the sepia filter using non-vectorized code (i.e. scalar code that might be
auto-vectorized by the JIT compiler). In the `vectorized` version, the benchmark applies the sepia filter using the
Vector API.

Source code: [SepiaVectorApiBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/vector/SepiaVectorApiBenchmark.java)

[![SepiaVectorApiBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/SepiaVectorApiBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/SepiaVectorApiBenchmark.svg?raw=true)

### Analysis of vectorized

All three JIT compilers perform similar in performance in the `baseline`. The focus of this section will therefore
be on the `vectorized` benchmark.

#### C2 JIT Compiler and Oracle GraalVM JIT Compiler

The C2 JIT compiler and the Oracle GraalVM JIT compiler implement the Vector API compiler intrinsics and are able to use
256-bit AVX registers. Therefore, the performance of the benchmark is similar for both JIT compilers.

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler does not implement the Vector API compiler intrinsics. It does therefore fallback
to the Java implementation of the Vector API which results in a significant performance degradation. This can be seen
by looking at the hottest methods in the benchmark after inlining.

```
  ....[Hottest Methods (after inlining)]..............................................................
    58.64%      jvmci, level 4  SepiaVectorApiBenchmark::vectorized, version 4, compile id 1219 
    19.45%      jvmci, level 4  jdk.internal.vm.vector.VectorSupport::blend, version 2, compile id 1194 
    19.03%      jvmci, level 4  jdk.incubator.vector.FloatVector::lambda$compareTemplate$61, version 2, compile id 1203
```

### Conclusions

Both C2 and the Oracle GraalVM JIT compilers are able to vectorize the benchmark body and perform close in performance
and better than the `baseline` benchmark.

The GraalVM CE JIT compiler is not able to fully vectorize the benchmark body and falls back to the Java implementation of the Vector API.

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
        // ... same pattern for all of the remaining targets
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
  // ... same pattern for all of the remaining interface declarations
  interface I1 {
    Wrapper wrapper = new Wrapper();
    default void baz_1() { wrapper.x++; }
    private void foo_1() { baz_1(); 
  }
```

Source code: [MegamorphicInterfaceCallBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark.java)

[![MegamorphicInterfaceCallBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/MegamorphicInterfaceCallBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/MegamorphicInterfaceCallBenchmark.svg?raw=true)

### Analysis of virtual_calls_chain

The `virtual_calls_chain` benchmark measures the performance of interface calls with a different number of targets at
the call site.

#### C2 JIT Compiler

The C2 JIT compiler is able to devirtualize and inline through the entire interface call chains at call sites that use up to
two different targets. In such cases, it also performs loop unrolling by a factor of 4 on the hot loop.

```
  ↗ 0x7fd0d4638090:   mov    0x10(%r11,%rcx,4),%eax       ; load in %eax the oop from the instances array at offset %rcx  
  │ 0x7fd0d4638095:   mov    0x8(%r12,%rax,8),%r10d       ; load the klass word of the object in %r10d
  │ 0x7fd0d463809a:   nopw   0x0(%rax,%rax,1)             ; alignment nop
  │ 0x7fd0d46380a0:   cmp    $0x1084000,%r10d             ; compare the klass word with the expected target klass
  │ 0x7fd0d46380a7:   jne    0x7fd0d463818d               ; jump if not equal to the slow path
  │ ...                                                   ; similar checks replicated 3 more times due to unroll factor of 4
  │ 0x7fd0d4638112:   add    $0x4,%eax                    ; add 4 to the wrapper result
  │ 0x7fd0d4638115:   mov    %eax,0xc(%rbp)               ; store the eax result
  │ 0x7fd0d4638118:   add    $0x4,%ecx                    ; increment the loop induction variable by 4
  │ 0x7fd0d463811b:   cmp    %esi,%ecx                    ; compare against the loop bound
  │ 0x7fd0d463811d:   data16 xchg %ax,%ax                 ; alignment nop
  ╰ 0x7fd0d4638120:   jl     0x7fd0d4638090               ; jump back to the loop start if loop condition is true
```

For more than three targets, the C2 JIT compiler always uses a series of interface calls to reach the target method.

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler inlines for a number of targets lower or equal to four. If more targets are present
(.e.g `virtual_calls_chain[MEGAMORPHIC_5]` and `virtual_calls_chain[MEGAMORPHIC_6]`), then it will check for
the first four targets. If none of the targets match, then it will use an interface call to reach the target method.

```
  0x7f2092ff8576:   mov    0x8(,%rsi,8),%ebx            ; load the klass word of the object in %ebx
  0x7f2092ff857d:   cmp    $0x102c000,%ebx              ; check if instance of C2
  0x7f2092ff8583:   je     0x7f2092ff86d3               ; jump to fully inlined C2 method
  0x7f2092ff8589:   cmp    $0x10259f0,%ebx              ; check if instance of C1
  0x7f2092ff858f:   je     0x7f2092ff8709               ; jump to fully inlined C1 method
  0x7f2092ff8595:   cmp    $0x102c2c0,%ebx              ; check if instance of C3
  0x7f2092ff859b:   je     0x7f2092ff86fd               ; jump to fully inlined C3 method
  0x7f2092ff85a1:   cmp    $0x102c580,%ebx              ; check if instance of C4
  0x7f2092ff85a7:   je     0x7f2092ff8715               ; jump to fully inlined C4 method
  0x7f2092ff85ad:   mov    %r11d,0xc(%rsp)              ; save the loop induction variable to the stack in case of deoptimization
  0x7f2092ff85b2:   test   %eax,0x0(,%rsi,8)            ; deopt check 
  0x7f2092ff85b9:   shl    $0x3,%rsi                    ; compute the full address from the oop
  0x7f2092ff85bd:   movabs $0x7f1fd002cb00,%rax
  0x7f2092ff85c7:   call   0x7f2092ff63a0               ; perform the interface call to reach the target method
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

The GraalVM CE JIT compiler is able to devirtualize (and inline) through the chain of interface calls
for all the number of targets used in the benchmark. It does not perform loop unrolling, but uses a series of compare and jump
instructions (by checking against the method constant pool) to check if the receiver is an instance of an expected target type.
Since in our benchmark all calls resolve to the same target method, the GraalVM CE JIT compiler is able to inline only
once the target method.

### Analysis of devirtualize_to_monomorphic

The `devirtualize_to_monomorphic` benchmark measures the performance and effectiveness of trying to manually split
a megamorphic call site into multiple monomorphic call sites. The benchmark uses a switch statement where each case
will always resolve to the same target method.

#### C2 JIT Compiler and GraalVM CE JIT Compiler

Both the C2 JIT compiler and the GraalVM CE JIT compiler are able to devirtualize and inline through the entire interface
chain calls. The same applies when a dominant target is present.

```
  ↗ 0x7f21a7242090:   cmp    $0x1c20,%r11d                ; compare the loop induction variable against the loop bound
  │ 0x7f21a7242097:   jge    0x7f21a72421bd               ; jump out of the loop if the loop condition is false
  │ 0x7f21a724209d:   mov    0x10(%r10,%r11,4),%ebx       ; load this.instances[i] in %ebx
  │ 0x7f21a72420a2:   movsbl 0x10(%r11,%r8,8),%edx        ; load this.instanceIndex[i] in %edx
  │ 0x7f21a72420a8:   mov    %r11d,%esi                   ; move the loop induction variable in %esi
  │ 0x7f21a72420ab:   inc    %esi                         ; increment the loop induction variable by one
  │ 0x7f21a72420ad:   inc    %r9d                         ; add 1 to the register containing the wrapper result
  │ 0x7f21a72420b0:   cmp    $0x3,%edx                    ; switch logic starts here. Compare the instanceIndex[i] against 3
  │ 0x7f21a72420b3:   jge    0x7f21a72420dd               ; ... and through one or more jumps land on the correct case
  │ 0x7f21a72420b9:   cmp    $0x2,%edx                    
  │ 0x7f21a72420bc:   nopl   0x0(%rax)                    
  │ 0x7f21a72420c0:   jge    0x7f21a724213d           
  │ 0x7f21a72420c6:   cmp    $0x0,%edx                    
  │ 0x7f21a72420c9:   je     0x7f21a72420fd           
  │ 0x7f21a72420cf:   cmp    $0x1,%edx                    
  │ 0x7f21a72420d2:   je     0x7f21a724211d           
  │ 0x7f21a72420d8:   jmp    0x7f21a7242355           
  │ 0x7f21a72420dd:   cmp    $0x5,%edx                    
  │ 0x7f21a72420e0:   jg     0x7f21a7242355           
  │ 0x7f21a72420e6:   cmp    $0x5,%edx
  │ 0x7f21a72420e9:   jge    0x7f21a724219d
  │ 0x7f21a72420ef:   cmp    $0x3,%edx
  │ 0x7f21a72420f2:   je     0x7f21a724215d
  │ 0x7f21a72420f8:   jmp    0x7f21a724217d               ; switch logic ends here.
  │ 0x7f21a72420fd:   data16 xchg %ax,%ax                 ; alignment nop. Case 0 starts here
  │ 0x7f21a7242100:   cmpl   $0x1080810,0x8(,%rbx,8)      ; monomorphic call site check. Compare the klass word of the object in %rbx with the expected target klass  
  │ 0x7f21a724210b:   jne    0x7f21a724229c               ; jump to the slow path if the check fails
  │ 0x7f21a7242111:   mov    %r9d,0xc(%rdi)               ; store the wrapper result in the field
  │ 0x7f21a7242115:   mov    %esi,%r11d                   ; move the loop induction variable in %r11d
  ╰ 0x7f21a7242118:   jmp    0x7f21a7242090               ; jump back to the loop beginning
    ... similar code for the remaining cases below ...
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler is able to is able to devirtualize and inline only for a number of four call sites or less.
For the remaining call sites, it will devirtualize up to a certain depth in the interface chain and then use an interface
call.

```
  0x7f7152d81f15:   shl    $0x3,%r9                     ; compute the full address from the oop
  0x7f7152d81f19:   mov    %r9,%rsi                     ; move the full address in %rsi
  0x7f7152d81f1c:   mov    %r9,0x10(%rsp)               ; save the full address to the stack
  0x7f7152d81f21:   xchg   %ax,%ax                      ; nop
  0x7f7152d81f23:   call   0x7f7152d7fbc0               ; invokeinterface foo_4
                                                        ; MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 246)
                                                        ; MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 250)
                                                        ; MegamorphicInterfaceCallBenchmark$I::baz@1 (line 256)
                                                        ; MegamorphicInterfaceCallBenchmark$I::foo@1 (line 260)
                                                        ; MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 159)
                                                        ; {optimized virtual_call}
```

### Conclusions

When it comes to interface calls, GraalVM CE JIT performs best across all the benchmark configurations. It is then
closely followed by the Oracle GraalVM JIT compiler. 

The C2 JIT compiler does not perform very well when the number
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
  // ... same pattern for all of the remaining classes
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

Source code: [MegamorphicMethodCallBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark.java)

[![MegamorphicMethodCallBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/MegamorphicMethodCallBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/MegamorphicMethodCallBenchmark.svg?raw=true)

### Analysis of virtual_call

The `virtual_call` benchmark measures the performance of virtual calls with a different number of targets at the call site.

#### C2 JIT Compiler

The C2 JIT compiler is able to devirtualize and inline call sites that use up to two different targets. In such cases,
it also performs loop unrolling by a factor of two.

```
    0x7f2cbc758990:   incl   0x10(%r11)                   ; increment the Alg2 counter    
  ↗ 0x7f2cbc758994:   add    $0x2,%edx                    ; add 2 to the loop induction variable
  │ 0x7f2cbc758997:   cmp    %eax,%edx                    ; compare against the loop bound
  │ 0x7f2cbc758999:   jge    0x7f2cbc75895f               ; jump out of the loop if the loop condition is false
  │ 0x7f2cbc75899b:   mov    0x10(%rsi,%rdx,4),%r10d      ; load this.instances[i] in %r10d
  │ 0x7f2cbc7589a0:   mov    0x8(%r12,%r10,8),%r8d        ; load the klass word of the object in %r8d
  │ 0x7f2cbc7589a5:   lea    (%r12,%r10,8),%r11           ; load the object address in %r11
  │ 0x7f2cbc7589a9:   cmp    $0x1026638,%r8d              ; compare the klass word against MegamorphicMethodCallBenchmark$Alg2
  │ 0x7f2cbc7589b0:   je     0x7f2cbc7589c1               ; if equal jump to the inlined method that increments the Alg2 counter 
  │ 0x7f2cbc7589b2:   cmp    $0x1026430,%r8d              ; compare the klass word againsst MegamorphicMethodCallBenchmark$Alg1
  │ 0x7f2cbc7589b9:   jne    0x7f2cbc7589ed               ; if not equal jump to the slow path which deoptimizes in this case 
  │ 0x7f2cbc7589bb:   incl   0xc(%r11)                    ; increment the Alg1 counter
  │ 0x7f2cbc7589bf:   jmp    0x7f2cbc7589c5               ; jump past the increment Alg2 counter code 
  │ 0x7f2cbc7589c1:   incl   0x10(%r11)                   ; increment the Alg2 counter
  │ 0x7f2cbc7589c5:   mov    0x14(%rsi,%rdx,4),%r11d      ; load this.instances[i + 1] in %r11d
  │ 0x7f2cbc7589ca:   mov    0x8(%r12,%r11,8),%r10d       ; load the klass word of the object in %r10d
  │ 0x7f2cbc7589cf:   shl    $0x3,%r11                    ; compute the full address from the oop
  │ 0x7f2cbc7589d3:   cmp    $0x1026638,%r10d             ; compare the klass word against MegamorphicMethodCallBenchmark$Alg2
  │ 0x7f2cbc7589da:   je     0x7f2cbc758990               ; if equal jump to the inlined method that increments the Alg2 counter
  │ 0x7f2cbc7589dc:   cmp    $0x1026430,%r10d             ; compare the klass word against MegamorphicMethodCallBenchmark$Alg1
  │ 0x7f2cbc7589e3:   jne    0x7f2cbc7589eb               ; if not equal jump to the slow path which deoptimizes in this case
  │ 0x7f2cbc7589e5:   incl   0xc(%r11)                    ; increment the Alg1 counter
  ╰ 0x7f2cbc7589e9:   jmp    0x7f2cbc758994               ; jump back to the loop beginning
```

If the number of targets is higher than two, the C2 JIT compiler always uses a virtual call to reach the target method.

```
  ↗ 0x7f41b8758e80:   mov    (%rsp),%r11                  ; load the instances array base address in %r11 from the stack
  │ 0x7f41b8758e84:   mov    0x10(%r11,%rbp,4),%r10d      ; load this.instances[i] in %r10d
  │ 0x7f41b8758e89:   mov    %r11,(%rsp)                  ; store the instances array base address on the stack
  │ 0x7f41b8758e8d:   mov    %r10,%rsi                    ; move the this.instances[i] in %rsi 
  │ 0x7f41b8758e90:   shl    $0x3,%rsi                    ; compute the full address from the oop
  │ 0x7f41b8758e94:   nop                                 ; alignment nop
  │ 0x7f41b8758e95:   movabs $0x7f40f8026430,%rax
  │ 0x7f41b8758e9f:   call   0x7f41b7fa1e20               ; virtual call to the compute method
  │ 0x7f41b8758ea4:   nopl   0x214(%rax,%rax,1)           ; more nops
  │ 0x7f41b8758eac:   inc    %ebp                         ; increment the loop induction variable by one
  │ 0x7f41b8758eae:   cmp    0x8(%rsp),%ebp               ; compare against the loop bound
  ╰ 0x7f41b8758eb2:   jl     0x7f41b8758e80               ; jump back to the loop beginning if the loop condition is true
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler devirtualizes and inlines call sites that use up to four different targets. If the number
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

The GraalVM CE JIT compiler is able to devirtualize and inline call sites regardless of the
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
  ↗↗ 0x7f9587241de0:   cmp    %r8d,%r11d                   ; compare the loop induction variable against the loop bound
  ││ 0x7f9587241de3:   jle    0x7f9587241edc               ; jump out of the loop if the loop condition is false
  ││ 0x7f9587241de9:   mov    0x10(%r10,%r8,4),%r9d        ; load this.instances[i] in %r9
  ││ 0x7f9587241dee:   mov    0x8(,%r9,8),%ecx             ; load the klass word of this.instances[i] in %ecx
  ││ 0x7f9587241df6:   movabs $0x7f9507000000,%rbx         ; move the metaspace base in %rbx
  ││ 0x7f9587241e00:   lea    (%rbx,%rcx,1),%rcx           ; load the address of the klass in %rcx
  ││ 0x7f9587241e04:   mov    %r8d,%ebx                    ; move the loop induction variable in %ebx
  ││ 0x7f9587241e07:   inc    %ebx                         ; increment the loop induction variable by one
  ││ 0x7f9587241e09:   cmp    -0x190(%rip),%rcx            ; compare the klass against one of the expected targets.
  ││                                                       ; the expected klasses are stored in the constant pool 
  ││ 0x7f9587241e10:   je     0x7f9587241e6c               ; if equal jump to the inlined method that increments the Alg1 counter   
  ││ 0x7f9587241e16:   cmp    -0x195(%rip),%rcx            ; compare the klass against one of the expected targets
  ││ 0x7f9587241e1d:   data16 xchg %ax,%ax                 ; alignment nop
  ││ 0x7f9587241e20:   je     0x7f9587241e7c               ; if equal jump to the inlined method that increments the Alg2 counter
  ││ ... similar code for the remaining targets below ...
  ││ 0x7f9587241e67:   jmp    0x7f9587241f96               ; if none of the targets match, then jump to the slow path which deoptimizes
  ││ 0x7f9587241e6c:   incl   0xc(,%r9,8)                  ; increment the c1 field
  ││ 0x7f9587241e74:   mov    %ebx,%r8d                    ; move the loop induction variable in %r8d
  │╰ 0x7f9587241e77:   jmp    0x7f9587241de0               ; jump back to the loop beginning
  │  0x7f9587241e7c:   incl   0x10(,%r9,8)                 ; increment the c2 field
  │  0x7f9587241e84:   mov    %ebx,%r8d                    ; move the loop induction variable in %r8d
  ╰  0x7f9587241e87:   jmp    0x7f9587241de0               ; jump back to the loop beginning
     ... similar code for the remaining targets below ...
     0x7f9587241edc:   mov    0x10(%rsp),%rbp 
     0x7f9587241ee1:   add    $0x18,%rsp                   ; pop the stack
     0x7f9587241ee5:   cmp    0x450(%r15),%rsp             ; safepoint poll check
     0x7f9587241eec:   ja     0x7f958724200f               ; jump to safepoint handling if required
     0x7f9587241ef2:   ret                                 ; return to the caller
```

### Analysis of devirtualize_to_monomorphic

The `devirtualize_to_monomorphic` benchmark measures the performance and effectiveness of trying to manually split
a megamorphic call site into multiple monomorphic call sites. The benchmark uses a switch statement where each case
will always resolve to the same target method.

Overall, all JVMs perform the same and are able to devirtualize and inline at the call sites. Below is the assembly
code generated by the GraalVM CE JIT compiler for the `devirtualize_to_monomorphic[MEGAMORPHIC_8]` benchmark:
``` 
  ↗↗ 0x7fa0032421a0:   cmp    $0x9d80,%r11d                ; compare the loop induction variable against the loop bound
  ││ 0x7fa0032421a7:   jge    0x7fa003242349               ; jump out of the loop if the loop condition is false
  ││ 0x7fa0032421ad:   mov    0x10(%r10,%r11,4),%r9d       ; load this.instances[i] in %r9d
  ││ 0x7fa0032421b2:   movsbl 0x10(%r11,%r8,8),%ebx        ; load this.classIndex[i] in %ebx
  ││ 0x7fa0032421b8:   mov    %r11d,%edi                   ; move the loop induction variable in %edi
  ││ 0x7fa0032421bb:   inc    %edi                         ; increment the loop induction variable by one
  ││ 0x7fa0032421bd:   cmp    $0x5,%ebx                    ; switch logic starts here.
  ││ 0x7fa0032421c0:   jge    0x7fa003242205
  ││ 0x7fa0032421c6:   cmp    $0x3,%ebx
  ││ 0x7fa0032421c9:   jge    0x7fa0032421f4
  ││ 0x7fa0032421cf:   cmp    $0x2,%ebx
  ││ 0x7fa0032421d2:   jge    0x7fa003242327
  ││ 0x7fa0032421d8:   cmp    $0x0,%ebx
  ││ 0x7fa0032421db:   nopl   0x0(%rax,%rax,1)
  ││ 0x7fa0032421e0:   je     0x7fa003242247
  ││ 0x7fa0032421e6:   cmp    $0x1,%ebx
  ││ 0x7fa0032421e9:   je     0x7fa003242269
  ││ 0x7fa0032421ef:   jmp    0x7fa003242569
  ││ 0x7fa0032421f4:   cmp    $0x3,%ebx
  ││ 0x7fa0032421f7:   je     0x7fa00324228b
  ││ 0x7fa0032421fd:   data16 xchg %ax,%ax
  ││ 0x7fa003242200:   jmp    0x7fa0032422cf
  ││ 0x7fa003242205:   cmp    $0x7,%ebx
  ││ 0x7fa003242208:   jg     0x7fa003242569
  ││ 0x7fa00324220e:   cmp    $0x7,%ebx
  ││ 0x7fa003242211:   jge    0x7fa003242225
  ││ 0x7fa003242217:   cmp    $0x5,%ebx
  ││ 0x7fa00324221a:   je     0x7fa003242305
  ││ 0x7fa003242220:   jmp    0x7fa0032422ad               ; switch logic ends here.
  ││ 0x7fa003242225:   cmpl   $0x1084a28,0x8(,%r9,8)       ; compare the klass word against the Alg8 klass 
  ││ 0x7fa003242231:   jne    0x7fa003242460               ; if not equal jump to the slow path which deoptimizes in this case
  ││ 0x7fa003242237:   incl   0x28(,%r9,8)                 ; increment the c8 field
  ││ 0x7fa00324223f:   mov    %edi,%r11d                   ; move the increment induction variable to %r11d
  │╰ 0x7fa003242242:   jmp    0x7fa0032421a0               ; jump back to the loop beginning
  │  0x7fa003242247:   cmpl   $0x102bad0,0x8(,%r9,8)       ; compare the klass word against the Alg1 klass 
  │  0x7fa003242253:   jne    0x7fa00324258d               ; jump to the slow path which deoptimizes in this case
  │  0x7fa003242259:   incl   0xc(,%r9,8)                  ; increment the c1 field
  │  0x7fa003242261:   mov    %edi,%r11d                   ; move the increment induction variable to %r11d
  ╰  0x7fa003242264:   jmp    0x7fa0032421a0               ; jump back to the loop beginning
     ... similar code for the remaining cases below ...
     0x7fa00324234e:   add    $0x18,%rsp                   ; pop the stack
     0x7fa003242352:   cmp    0x450(%r15),%rsp             ; safepoint poll check
     0x7fa003242359:   ja     0x7fa0032425f9               ; jump to safepoint handling if required
     0x7fa00324235f:   ret                                 ; return to the caller
```

The only exception in regard to the performance of the benchmark is with the C2 compiler in
`devirtualize_to_monomorphic[MEGAMORPHIC_8]`. The reason the C2 compiler does not perform similar to the other compilers
and to the `devirtualize_to_monomorphic[MEGAMORPHIC_7]` benchmark is that it switches from using binary search over
switch ranges (as shown in the above assembly snippet of GraalVM CE JIT compiler) to using a jump table when the number
of targets is higher than seven.

Below is the relevant snippet of the assembly code generated by the C2 JIT compiler
for the `devirtualize_to_monomorphic[MEGAMORPHIC_8]` benchmark:

```
  0x7f374063c509:   movslq %r8d,%r9                     ; move the loop induction variable in %r9
  0x7f374063c50c:   mov    0x10(%rdx,%r9,4),%r11d       ; load this.instances[i] in %r11d
  0x7f374063c511:   movsbl 0x10(%rax,%r9,1),%ecx        ; load this.classIndex[i] in %ecx
  0x7f374063c517:   cmp    $0x8,%ecx                    ; check if the classIndex[i] is greater or equal to 8
  0x7f374063c51a:   jae    0x7f374063c531               ; if true (i.e. default case) jump to default path of the switch statement which in this case deoptimizes
  0x7f374063c51c:   movslq %ecx,%r9                     ; move the classIndex[i] in %r9
  0x7f374063c51f:   shl    $0x3,%r9                     ; compute the full address from the oop
  0x7f374063c523:   movabs $0x7f374063c300,%rbx         ; move the base of the jump table in %rbx
  0x7f374063c52d:   jmp    *(%rbx,%r9,1)                ; jump to the relevant entry in the jump table
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

Source code: [MethodArgsBusterBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/MethodArgsBusterBenchmark.java)

[![MethodArgsBusterBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/MethodArgsBusterBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/MethodArgsBusterBenchmark.svg?raw=true)

### Analysis of method_args_buster

This section analyzes the performance of the `method_args_buster` benchmark.

#### C2 JIT Compiler

The C2 JIT compiler does not compile the `tooManyArgsMethod` method into the benchmark method. Instead, the final version of
this method that is executed is JITed by the C1 compiler. The C1 compiler does not inline the `Math::round` method
into the `tooManyArgsMethod` method, resulting in a long chain of calls.

Below is a snippet of the assembly code generated by the C1 compiler for the `tooManyArgsMethod` benchmark:

```
  ... similar assembly above...
  0x7f8afc638ce7:   call   0x7f8afc6382a0               ; call the Math::round method
  0x7f8afc638cec:   nopl   0x20004dc(%rax,%rax,1)       ; alignment nops
  0x7f8afc638cf4:   mov    0x30(%rsp),%rsi              ; load the intermediate result from the stack in %rsi
  0x7f8afc638cf9:   add    %rax,%rsi                    ; add the Math::round result to the intermediate result
  0x7f8afc638cfc:   vmovsd 0x230(%rsp),%xmm0            ; load the next argument in %xmm0
  0x7f8afc638d05:   mov    %rsi,0x38(%rsp)              ; store the intermediate result on the stack
  0x7f8afc638d0a:   nopl   0x0(%rax,%rax,1)             ; alignment nops
  0x7f8afc638d0f:   call   0x7f8afc6382a0               ; call the Math::round method again
  ... similar assembly below...
```

The hottest methods in the benchmark are shown below:

```
  ....[Hottest Regions]...............................................................................
    57.56%         c2, level 4  java.lang.Math::round 
    33.80%         c1, level 1  MethodArgsBusterBenchmark::tooManyArgsMethod 
     5.13%         c1, level 1  MethodArgsBusterBenchmark::method_args_buster
```

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

Both the Oracle GraalVM JIT compiler and the GraalVM CE JIT compiler are able to inline the `tooManyArgsMethod` method
and return a constant value. Below is a section of the assembly code generated by the GraalVM CE JIT compiler for
the `method_args_buster` method:

```
  0x7fb65323c2ba:   mov    $0xcc,%rax                   ; move 204, the constant result of the method in the return register %rax
  0x7fb65323c2c1:   add    $0x18,%rsp                   ; pop the stack
  0x7fb65323c2c5:   cmp    0x450(%r15),%rsp             ; check if a safepoint is required
  0x7fb65323c2cc:   ja     0x7fb65323c2e0               ; jump to safepoint handling if required
  0x7fb65323c2d2:   ret                                 ; return to the caller
```

### Conclusions

The C2 JIT compiler fails to compile methods that take a large number of arguments whereas this limit seems higher
for the Graal JIT compilers.
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


Source code: [NpeControlFlowBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeControlFlowBenchmark.java)

[![NpeControlFlowBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/NpeControlFlowBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/NpeControlFlowBenchmark.svg?raw=true)

### Analysis of try_npe_catch

All three JIT compilers perform similar in all benchmarks configurations apart from the `try_npe_catch` benchmark.
Therefore, the section below will focus on the `try_npe_catch` benchmark when the `nullThreshold` is 16.

#### C2 JIT Compiler

The C2 JIT compiler is able to optimize and make use of a cached `NullPointerException` object
when the same exception is thrown multiple times. This avoids allocating a new exception object on the iterations of
the loop when the `NullPointerException` is thrown. One side effect is that stack traces are not collected
for the cached exception object. This optimization is enabled by default and can be disabled by using the
`-XX:-OmitStackTraceInFastThrow` flag.

```
    0x7f14a463aaa0:   add    0xc(%r12,%r10,8),%r14d       ; increment the accumulator %r14d with the value of array[i].x
  ↗ 0x7f14a463aaa5:   mov    0x458(%r15),%r10             ; load safepoint poll address in %r10 
  │ 0x7f14a463aaac:   mov    0x10(%rbp),%r8d              ; load the size filed in %r8d
  │ 0x7f14a463aab0:   inc    %ebx                         ; increment the loop induction variable
  │ 0x7f14a463aab2:   test   %eax,(%r10)                  ; safepoint poll check                  
  │ 0x7f14a463aab5:   cmp    %r8d,%ebx                    ; compare the loop induction variable against size
  │ 0x7f14a463aab8:   jge    0x7f14a463ab2d               ; jump to return if the loop condition is false
  │ 0x7f14a463aabe:   mov    0x1c(%rbp),%r11d             ; load the array field (oop) in %r11d
  │ 0x7f14a463aac2:   test   %r11d,%r11d                  ; check if the array field is null
  │ 0x7f14a463aac5:   je     0x7f14a463aa74               ; if null jump to the slow path
  │ 0x7f14a463aac7:   mov    0xc(%r12,%r11,8),%r8d        ; load the array length in %r8d
  │ 0x7f14a463aacc:   cmp    %r8d,%ebx                    ; compare the loop induction variable against the array length
  │ 0x7f14a463aacf:   jae    0x7f14a463ab43               ; if greater or equal jump to the slow path and throw ArrayIndexOutOfBoundsException
  │ 0x7f14a463aad5:   lea    (%r12,%r11,8),%r10           ; compute the absolute address of the array
  │ 0x7f14a463aad9:   mov    0x10(%r10,%rbx,4),%r10d      ; load the object (oop) at array[i] in %r10d 
  │ 0x7f14a463aade:   xchg   %ax,%ax                      ; alignment nop
  │ 0x7f14a463aae0:   test   %r10d,%r10d                  ; check if the object is null
  │ 0x7f14a463aae3:   jne    0x7f14a463aaa0               ; if not null jump to the accumulator increment
  │ 0x7f14a463aae5:   cmpb   $0x0,0x40(%r15)              
  │ 0x7f14a463aaea:   jne    0x7f14a463aba5
  │ 0x7f14a463aaf0:   movabs $0x7ffc01020,%r10            ; load the cached NullPointerException object in %r10
  │ 0x7f14a463aafa:   mov    %r12d,0x14(%r10)             ; clear the `detailedMessage` field of the cached exception object
  │ 0x7f14a463aafe:   mov    %ebx,0x4(%rsp)               ; store the loop induction variable on the stack
  │ 0x7f14a463ab02:   mov    %r14d,(%rsp)                 ; store the accumulator on the stack
  │ 0x7f14a463ab06:   mov    %rbp,%rsi                    ; move the `this` pointer in %rsi 
  │ 0x7f14a463ab09:   movabs $0x7ffc01020,%rdx            ; load the cached NullPointerException object in %rdx 
  │ 0x7f14a463ab13:   call   0x7f14a40c4380               ; call the `sink` method from the benchmark
  │ 0x7f14a463ab18:   nopl   0x1000288(%rax,%rax,1)       ; alignment nop
  │ 0x7f14a463ab20:   mov    (%rsp),%r14d                 ; load the accumulator from the stack in %r14d
  │ 0x7f14a463ab24:   mov    0x4(%rsp),%ebx               ; load the loop induction variable from the stack in %ebx
  ╰ 0x7f14a463ab28:   jmp    0x7f14a463aaa5               ; jump back to the loop beginning
```

Below, is a flamegraph of the `try_npe_catch` benchmark when the `nullThreshold` is 16. The flamegraph is generated
using the [Async-profiler](https://github.com/async-profiler/async-profiler/).

[![NpeControlFlowBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch-AverageTime-nullThreshold-16-size-262144/flame-cpu-forward.png?raw=true)](https://htmlpreview.github.io?https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch-AverageTime-nullThreshold-16-size-262144/flame-cpu-forward.html)

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

Oracle GraalVM JIT compiler and the GraalVM CE JIT compiler do not make use of a cached `NullPointerException` object.
Instead, both compilers allocate a new exception and fill in the stack trace on each iteration of the loop when the
`NullPointerException` is thrown. This can once again be observed by looking at the generated flamegraph.

[![NpeControlFlowBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch-AverageTime-nullThreshold-16-size-262144/flame-cpu-forward.png?raw=true)](https://htmlpreview.github.io?https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeControlFlowBenchmark.try_npe_catch-AverageTime-nullThreshold-16-size-262144/flame-cpu-forward.html)

Opposed to the C2 JIT compiler, the GraalVM based JIT compilers will spend additional time inside JVMCI and
then filling in the stack trace.

### Conclusions

All three JIT compilers perform close in all benchmark configurations apart from the `try_npe_catch` benchmark. The reason
the C2 JIT compiler performs better in this benchmark is because it uses a cached `NullPointerException` object and
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

Source code: [NpeThrowBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/NpeThrowBenchmark.java)

[![NpeThrowBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/NpeThrowBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/NpeThrowBenchmark.svg?raw=true)

For `threshold:0`, there are no `null` elements in the array. For `threshold:0.5`, on average, half of the elements in
the array are `null`. For `threshold:1`, all elements in the array are `null`.

### Analysis of implicit_throw_npe

All three JIT compilers perform close in performance for all benchmark configurations except for the `implicit_throw_npe`,
especially when the `threshold` is 0.5 or 1.0.

#### C2 JIT Compiler

The C2 JIT compiler, as in the case of the `NpeControlFlowBenchmark` benchmark, makes use of a cached
`NullPointerException` object and directly calls into the exception handler (`OptoRuntime::handle_exception_C`).
A side effect of this optimization is that the stack trace is not collected.

Below is the flamegraph generated by the `implicit_throw_npe` benchmark when the `threshold` is 1.0.

[![NpeThrowBenchmark.png](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.png?raw=true)](https://htmlpreview.github.io?https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.html)

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

The Oracle GraalVM JIT compiler and the GraalVM CE JIT compiler do not make use of a cached `NullPointerException` object.
Instead, both compilers allocate a new exception and fill in the stack trace on each iteration of the loop (when the
threshold is 1.0). This can once again be observed by looking at the generated flamegraph.

[![NpeThrowBenchmark.png](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.png?raw=true)](https://htmlpreview.github.io?https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.compiler.NpeThrowBenchmark.implicit_throw_npe-AverageTime-size-1024-threshold-1.0/flame-cpu-forward.html)

### Conclusions

All three JIT compilers perform similar in performance when throwing explicit exceptions.

There is an important performance difference however when throwing implicit exceptions. That is, the C2 JIT compiler
will avoid allocating a new exception object and filling in the stack trace when the same exception is thrown multiple
times in the hot path.

## RecursiveMethodCallBenchmark

The benchmark tests the performance of recursive method calls in classes, interfaces and lambda functions.
Additionally, it tests the performance of static vs non-static recursive calls.

In this benchmark, the ability to inline recursive calls plays an important role in the performance.

```
  private static final Object OBJECT = new Object();
  
  @Param({"256"})
  int depth;
   
  @Benchmark
  public Object class_non_static_method() {
    return cls_non_static(depth);
  }

  private Object cls_non_static(int depth) {
    if (depth == 0) {
      return OBJECT;
    }
    return cls_non_static(depth - 1);
  }
  
  // ... same pattern for the other benchmarks ...
```

Source code: [RecursiveMethodCallBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark.java)

[![RecursiveMethodCallBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/RecursiveMethodCallBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/RecursiveMethodCallBenchmark.svg?raw=true)

### Analysis of class_non_static_method

The analysis below pertains to the `class_non_static_method` method, which is interesting due to the differences in performance.

The other cases (e.g., `interface_non_static_method`, `interface_static_method`, `class_static_method`) where there is a significant difference in performance rely on similar patterns.

#### C2 JIT Compiler

The C2 JIT compiler is capable of devirtualizing `cls_non_static` calls and performs partial inlining up to a depth of 2.

```
  class_non_static_method()
  
  0x7f14704f865a:   mov    0xc(%rsi),%edx                ; get field 'depth' into edx
  0x7f14704f865d:   movabs $0x7ff034f48,%rax             ; load the OBJECT constant {oop(a &apos;java/lang/Object&apos;{0x7ff034f48})} into %rax
  0x7f14704f8667:   test   %edx,%edx                     ; test if edx ('depth') is zero
  0x7f14704f8669:   je     0x7f14704f8680                ; jump if zero
  0x7f14704f866b:   cmp    $0x1,%edx                     ; compare edx ('depth') to the value 0x1
  0x7f14704f866e:   je     0x7f14704f8680                ; jump if edx is equal to 0x1
  0x7f14704f8670:   add    $0xfffffffe,%edx              ; add -2 (in two's complement) to edx, effectively decrementing it by 2
  0x7f14704f8673:   call   0x7f14704f82c0                ; invokevirtual cls_non_static
                                                         ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                         ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                         ; - RecursiveMethodCallBenchmark::class_non_static_method@5 (line 84)
                                                         ; {optimized virtual_call}
```

```
  cls_non_static()
  
    ↗  0x7f14704f82c0:   mov    %eax,-0x14000(%rsp)
    │  0x7f14704f82da:   movabs $0x7ff034f48,%rax        ; load the OBJECT constant {oop(a &apos;java/lang/Object&apos;{0x7ff034f48})} into %rax
    │  0x7f14704f82e4:   test   %edx,%edx                ; test if edx ('depth') is zero
   ╭│  0x7f14704f82e6:   je     0x7f14704f8300           ; jump if zero
   ││  0x7f14704f82e8:   cmp    $0x1,%edx                ; compare edx ('depth') to the value 0x1
  ╭││  0x7f14704f82eb:   je     0x7f14704f8300           ; jump if edx is equal to 0x1
  │││  0x7f14704f82ed:   add    $0xfffffffe,%edx         ; add -2 (in two's complement) to edx ('depth'), effectively decrementing it by 2
  ││╰  0x7f14704f82f3:   call   0x7f14704f82c0           ; <--- recursive call to itself
  ││                                                     ; invokevirtual cls_non_static
  ││                                                     ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                     ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                     ; {optimized virtual_call}
  ││   ...
  ↘↘   0x7f14704f8300:   add    $0x10,%rsp
       ...
       0x7f14704f8312:   ret
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler is capable of devirtualizing `cls_non_static` virtual calls and performs inlining up to a depth of 8.

```
  class_non_static_method()
  
  0x7f017ed9ea5f:   mov    0xc(%rsi),%edx            ; get field 'depth' into edx
  ...
  0x7f017ed9eacb:   call   0x7f017ed9e5c0            ; invokevirtual cls_non_static
                                                     ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                     ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                     ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                     ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                     ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                     ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                     ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                     ; - RecursiveMethodCallBenchmark::class_non_static_method@5 (line 84)
                                                     ; {optimized virtual_call}
```

```
  cls_non_static()
  
    ↗ 0x7f017ed9e5c0:   mov    %eax,-0x14000(%rsp)
    │ ...
    │ 0x7f017ed9e5fa:   cmp    $0x1,%edx             ; compare edx ('depth') against 0x1
  ╭ │ 0x7f017ed9e600:   je     0x7f017ed9e66f        ; jump if equal to 0x1
  │ │ ...
  │ │ 0x7f017ed9e63d:   cmp    $0x7,%edx             ; compare edx ('depth') against 0x7
  │╭│ 0x7f017ed9e640:   je     0x7f017ed9e66f        ; jump if equal to 0x7
  │││ 0x7f017ed9e646:   lea    -0x8(%rdx),%edx       ; subtract 0x8 from edx
  ││╰ 0x7f017ed9e64b:   call   0x7f017ed9e5c0        ; <--- recursive call to itself
  ││                                                 ; invokevirtual cls_non_static
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; {optimized virtual_call}
  ││ ...
  ││ 0x7f017ed9e66e:   ret
  ↘↘ 0x7f017ed9e66f:   movabs $0x7fec34d58,%rax      ; move the OBJECT constant {oop(a &apos;java/lang/Object&apos;{0x7fec34d58})}
     ...
     0x7f017ed9e68f:   ret
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler is capable of devirtualizing `cls_non_static` virtual calls and performs partial inlining up to a depth of 6.

```
  cls_non_static()
  
    ↗ 0x7f46a719cac0:   mov    %eax,-0x14000(%rsp)
    │ ...
    │ 0x7f46a719cae0:   test   %edx,%edx             ; test if edx ('depth') is zero
  ╭ │ 0x7f46a719cae2:   je     0x7f46a719cb57        ; jump if edx is zero
  │ │ 0x7f46a719cae8:   cmp    $0x1,%edx             ; compare edx to the value 0x1
  │╭│ 0x7f46a719caeb:   je     0x7f46a719cb78        ; jump if edx is equal to 0x1
  │││ ...
  │││ 0x7f46a719cb30:   lea    -0x6(%rdx),%edx       ; subtract 0x6 from edx
  ││╰ 0x7f46a719cb33:   call   0x7f46a719cac0        ; <--- recursive call to itself
  ││                                                 ; invokevirtual cls_non_static
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; - RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
  ││                                                 ; {optimized virtual_call}
  ││↗ 0x7f46a719cb40:   mov    0x10(%rsp),%rbp
  │││ ...
  │││ 0x7f46a719cb56:   ret
  ↘││ 0x7f46a719cb57:   movabs $0x7fea347c0,%rax     ; move the OBJECT constant {oop(a &apos;java/lang/Object&apos;{0x7fea347c0})} into rax
   ││ ...
   ││ 0x7f46a719cb77:   ret
   ↘│ 0x7f46a719cb78:   movabs $0x7fea347c0,%r10     ; move the OBJECT constant {oop(a &apos;java/lang/Object&apos;{0x7fea347c0})} into r10
    │ 0x7f46a719cb82:   mov    %r10,%rax             ; rax = r10
    ╰ 0x7f46a719cb85:   jmp    0x7f46a719cb40        ; jump back
```

### Conclusions

For lambda recursive calls (both `lambda_static` and `lambda_non_static`), all three JITs are capable of fully inlining and eliminating the recursive calls.

When it comes to recursive calls in classes and interfaces (`class_static_method`, `class_non_static_method`, `interface_static_method`, `interface_non_static_method`):
- The C2 JIT compiler can devirtualize and inline the recursive calls up to a depth of 2.
- The GraalVM CE JIT compiler can devirtualize and inline the recursive calls up to a depth of 6.
- The Oracle GraalVM JIT compiler can devirtualize and inline the recursive calls up to a depth of 8.

## ScalarEvolutionAndLoopOptimizationBenchmark

This benchmark checks if the compiler can recognize the existence of the induction variables and to replace it with simpler computations.
This optimization is a special case of strength reduction where all loop iterations are strengthened to a mathematical formula.

```
  @Benchmark
  public int scev_loop() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      sum += i;
    }
    return sum;
  }

  @Benchmark
  public int baseline() {
    return ((size * (size + 1)) / 2);
  }
```

Source code: [ScalarEvolutionAndLoopOptimizationBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark.java)

[![ScalarEvolutionAndLoopOptimizationBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/ScalarEvolutionAndLoopOptimizationBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/ScalarEvolutionAndLoopOptimizationBenchmark.svg?raw=true)

### Analysis

#### C2 JIT Compiler

The C2 JIT compiler unrolls the main loop by a factor of 16, thereby handling 16 additions per unrolled loop cycle.

```
  // Main loop (from 0x1 ... to 0x3e80)

    0x7f9ccc4f8dba:   mov    0xc(%rsi),%r9d       ; load the field 'size' into r9d
    0x7f9ccc4f8dd1:   mov    $0x1,%ebx            ; initialize loop counter
    0x7f9ccc4f8dca:   movslq %r9d,%r10            ; sign-extend r9d ('size') to r10
    0x7f9ccc4f8dfd:   mov    %r10d,%ecx           ; ecx = r10d ('size')
    ...
  ↗ 0x7f9ccc4f8e20:   add    %ebx,%eax            ; eax = eax + ebx
  │ ...
  │ <-- repeat the same 7 times -->
  │ ...
  │ 0x7f9ccc4f8e30:   lea    0x8(%rbx),%edx       ; edx = rbx + 0x8
  │ 0x7f9ccc4f8e33:   add    %edx,%eax            ; eax = eax + edx
  │ ...
  │ <-- repeat the same 5 times -->
  │ ...
  │ 0x7f9ccc4f8e3f:   add    %ebx,%eax            ; eax = eax + ebx
  │ 0x7f9ccc4f8e41:   add    %ebx,%eax            ; eax = eax + ebx
  │ 0x7f9ccc4f8e43:   add    $0x48,%eax           ; eax = eax + 0x48
  │ 0x7f9ccc4f8e46:   add    $0x10,%ebx           ; increment loop counter by 0x10
  │ 0x7f9ccc4f8e49:   cmp    %ecx,%ebx            ; compare ebx to loop counter
  ╰ 0x7f9ccc4f8e4b:   jl     0x7f9ccc4f8e20       ; jump back to the loop if less than
  ; eax stores the result of the main loop
```

The post-loop handles the remaining numbers individually, without loop unrolling.

```
  // Post loop
  
  ↗ 0x7f9ccc4f8e68:   add    %ebx,%eax            ; eax = eax + ebx
  │ 0x7f9ccc4f8e6a:   inc    %ebx                 ; ebx = ebx + 1
  │ 0x7f9ccc4f8e6c:   cmp    %r9d,%ebx            ; compare ebx to r9d ('size')
  ╰ 0x7f9ccc4f8e6f:   jl     0x7f9ccc4f8e68       ; jump back to the loop if less than
  ; eax stores the result of the post loop  
```

#### Oracle GraalVM JIT Compiler

Oracle GraalVM JIT compiler does the sum of numbers using vectorized instructions that operate on 256-bit wide AVX (Advanced Vector Extensions) registers, thereby handling 8 additions per unrolled loop cycle.

```
  // Main loop

    0x7f63a6d9db7a:   mov    0xc(%rsi),%eax         ; load the field 'size' into eax
    0x7f63a6d9dbaa:   lea    -0x8(%rax),%r10        ; r10 = rax - 0x8
    0x7f63a6d9dbae:   vmovdqa -0xb6(%rip),%ymm1
    0x7f63a6d9dbb6:   vmovdqa -0x9e(%rip),%ymm2
    0x7f63a6d9dbbe:   mov    $0x0,%r11              ; initialize loop counter
    ...
  ↗ 0x7f63a6d9dbe0:   vmovdqu %ymm3,%ymm0           ; ymm3 = ymm0
  │ 0x7f63a6d9dbe4:   vpaddd %ymm1,%ymm0,%ymm3      ; packed integer addition: ymm3 = ymm0 + ymm1
  │ 0x7f63a6d9dbe8:   vpaddd %ymm0,%ymm2,%ymm2      ; packed integer addition: ymm2 = ymm2 + ymm0
  │ 0x7f63a6d9dbec:   lea    0x8(%r11),%r11         ; increment r11 (loop counter) by 8
  │ 0x7f63a6d9dbf0:   cmp    %r10,%r11              ; compare counter against loop counter
  ╰ 0x7f63a6d9dbf3:   jle    0x7f63a6d9dbe0         ; jump back if less equal
    ; ymm2 stores the result of the main loop
```

The post-loop handles the remaining numbers individually, without loop unrolling.

```
  // Post loop

  ...
  <--- transfers data from ymm2 (256-bit AVX register) into r8d (32-bit register) -->
  ...
  ↗ 0x7f63a6d9dc40:   mov    %r10d,%r9d
  │ 0x7f63a6d9dc43:   inc    %r9d
  │ 0x7f63a6d9dc46:   add    %r10d,%r8d
  │ 0x7f63a6d9dc49:   inc    %r11                 ; increment loop counter
  │ 0x7f63a6d9dc4c:   mov    %r9d,%r10d
  │ 0x7f63a6d9dc4f:   cmp    %rax,%r11            ; compare r11 to rax ('size')
  ╰ 0x7f63a6d9dc52:   jle    0x7f63a6d9dc40       ; jump back if less equal
    ; r8d stores the result of the post loop
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler expands the main loop by a factor of 16, allowing it to process 16 additions during each iteration of the unrolled loop.

The method used for calculating the sum of consecutive numbers within the primary loop demonstrates notable efficiency. 
Each iteration of the unrolled loop computes the sum of every 16 consecutive numbers, such as [1...16], [17...32], [33...48], [49...64], and so on. 
Within each unrolled loop iteration:

- The initial number in the sequence (e.g., 1, 17, 33, 49, etc.) is shifted left by 4 bits,
- Subsequently, 0x78 (e.g., 120) is added. This value represents the disparity between the sums of every 16 consecutive numbers within each sequence.

In essence, the sum within a single unrolled loop iteration is expressed as `seq(Ti) << 4 + 0x78`, where `seq(Ti)` is the initial element from the sequence.

```
  // Main loop
  
  0x7fe8bb19963a:   mov    0xc(%rsi),%eax               ; load the field 'size' into eax
  0x7fe8bb199656:   mov    $0x0,%r8d                    ; initialize loop counter
  0x7fe8bb19968b:   lea    -0x10(%rax),%r10d            ; r10d = rax - 0x10
  0x7fe8bb19968f:   mov    %r8d,0x4(%rsp)
  0x7fe8bb199694:   mov    %r11d,%r8d
  0x7fe8bb199697:   mov    0x4(%rsp),%r11d              ; r11d = value stored previously in r8d
  
  ↗  0x7fe8bb1996c0:   lea    0x10(%r8),%r9d            ; r9d = r8 + 0x10
  │  0x7fe8bb1996c4:   shl    $0x4,%r8d                 ; r8d = r8d << 0x4 (shift left by 4 bits)
  │  0x7fe8bb1996c8:   add    %r8d,%r11d
  │  0x7fe8bb1996cb:   lea    0x78(%r11),%r11d          ; r11d = r11d + 0x78 (120)
  │  0x7fe8bb1996cf:   mov    %r9d,%r8d
  │  0x7fe8bb1996d2:   cmp    %r8d,%r10d                ; compare r10d against r8d (loop counter)
  ╰  0x7fe8bb1996d5:   jg     0x7fe8bb1996c0            ; jump if greater
    ; r11d stores the result of the main loop
```

The post-loop handles the remaining numbers individually, without loop unrolling

```
  // Post loop
  
  ↗ 0x7fe8bb1996e0:   mov    %r8d,%r10d
  │ 0x7fe8bb1996e3:   inc    %r10d                        
  │ 0x7fe8bb1996e6:   add    %r8d,%r11d                 ; r11d stores the 'sum'
  │ 0x7fe8bb1996e9:   mov    %r10d,%r8d                 ; update loop counter
  │ 0x7fe8bb1996f0:   cmp    %r8d,%eax                  ; compare eax ('size') to r8d (loop counter)
  ╰ 0x7fe8bb1996f3:   jg     0x7fe8bb1996e0             ; jump if greater 
    ; r11d stores the result of the post loop
```

### Conclusions

None of the compilers have implemented this optimization.

Nevertheless, the optimization triggered by the C2 JIT compiler, which unrolls the main loop by a factor of 16 and sequentially performs the additions, appears to be less efficient compared to other compilers.

Despite the fact that the Oracle GraalVM JIT compiler utilizes vectorized instructions within the main unrolled loop, it seems to perform slower than the GraalVM CE JIT compiler, which abstains from using vectorized instructions but employs an efficient formula with scalar instructions.

## ScalarReplacementBenchmark

The compiler can analyse the scope of a new object and decide whether it can be allocated or not on the stack instead of the heap.
The method is called Escape Analysis (EA), and it identifies if an object allocation is escaping the current scope.
To not be confused, EA is not an optimization but rather an analysis phase of the optimizer.
There are a few escape states:
- `NoEscape` - The object does not escape the method or thread, and it is not passed to a call.
- `ArgEscape` - The object does not escape the method or thread, but it is passed as an argument to a call or referenced by an argument, and it does not escape during the call.
- `GlobalEscape` - The object can escape the method or the thread, which means that such an object is visible outside the method or thread.

For `NoEscape` objects, the compiler can remap accesses to the object fields to accesses to synthetic local operands: which leads to so-called `Scalar Replacement` optimization.

```
  @Param(value = {"false"})
  private boolean objectEscapes;

  @Benchmark
  public HeavyWrapper branch_escape_obj() {
    HeavyWrapper wrapper = new HeavyWrapper(value, size);
    HeavyWrapper result;

    // wrapper is NoEscape, because "objectEscapes" is always false, hence branch is never executed
    if (objectEscapes) {
      result = wrapper;
    } else {
      result = CACHED_WRAPPER;
    }

    return result;
  }

  @Benchmark
  public boolean arg_escape_obj() {
    HeavyWrapper wrapper1 = new HeavyWrapper(value, size);
    HeavyWrapper wrapper2 = new HeavyWrapper(value, size);
    boolean match = false;

    // wrapper1 is NoEscape
    // wrapper2 is:
    //  - NoEscape if inlining of equals() succeeds
    //  - ArgEscape if inlining fails or disabled
    if (wrapper1.equals(wrapper2)) match = true;

    return match;
  }
```

Source code: [ScalarReplacementBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarReplacementBenchmark.java)

[![ScalarReplacementBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/ScalarReplacementBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/ScalarReplacementBenchmark.svg?raw=true)

### Analysis of branch_escape_obj

#### C2 JIT Compiler

The C2 JIT compiler allocates the `HeavyWrapper wrapper` object at the start of the method, as per its declaration. However, later on, as the comparison is always evaluated to false, the allocated object remains unnecessary.

```
  0x7f5ac04f7a5a:   mov    %rsi,0x8(%rsp)               ; store the rsi into the stack at an offset of 0x8
  0x7f5ac04f7a5f:   mov    0x10(%rsi),%edx              ; move 'size' into register edx
  0x7f5ac04f7a6e:   movslq %edx,%rcx                    ; sign-extend the value in edx into rcx
  0x7f5ac04f7a71:   mov    0xc(%rsi),%r10d              ; move 'value' into r10d
  0x7f5ac04f7a75:   mov    %r10d,(%rsp)                 ; move 'value' from r10d into the stack
  ...
  <--- Allocates the HeavyWrapper wrapper object --->
  ...
  0x7f5ac04f7b59:   mov    0x8(%rsp),%r10               ; load the value from the stack offset 0x8 into r10
  0x7f5ac04f7b5e:   movzbl 0x14(%r10),%ebp              ; load and zero-extend the byte at field 'objectEscapes' into ebp
  0x7f5ac04f7b63:   test   %ebp,%ebp                    ; test if 'objectEscapes' is true (non-zero)
  0x7f5ac04f7b65:   jne    0x7f5ac04f7bb1               ; jump if the 'objectEscapes' value is true (branch not taken)
  0x7f5ac04f7b67:   mov    0x18(%r10),%r10d
  0x7f5ac04f7b6b:   mov    %r10,%rax                    ; move 'CACHED_WRAPPER' into rax
  0x7f5ac04f7b6e:   shl    $0x3,%rax                    ; compressed oops (shift left by 3 for addressing)
  ...
  0x7f5ac04f7b84:   ret
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler allocates the `HeavyWrapper wrapper` object only if the boolean condition imposes (i.e., it reorders the instructions), otherwise it uses the cached wrapper object, hence preventing unnecessary allocations.

```
    0x7f7ceada1b40:   cmpb   $0x0,0x14(%rsi)           ; compare byte at offset 0x14 (field 'objectEscapes') to zero
  ╭ 0x7f7ceada1b44:   jne    0x7f7ceada1b72            ; jump if not equal (branch not taken)
  │ 0x7f7ceada1b4a:   cmpl   $0x0,0x10(%rsi)           ; compare 'size' agaist 0x0 
  │ 0x7f7ceada1b4e:   jl     0x7f7ceada1b9a            ; jump if 'size' is less than 0x0  (branch not taken)
  │ 0x7f7ceada1b54:   mov    0x18(%rsi),%eax           ; move 'CACHED_WRAPPER' into rax
  │ 0x7f7ceada1b57:   shl    $0x3,%rax                 ; compressed oops (shift left by 3 for addressing)
  │ ...
  │ 0x7f7ceada1b71:   ret
  ↘ ...
    0x7f7ceada1b8d:   call   0x7f7cea6ff17a            ; new array
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler performs the same optimization as the Oracle GraalVM JIT compiler, which explains why this benchmark is much faster for the Graal compiler.

### Analysis of arg_escape_obj

#### C2 JIT Compiler

The C2 JIT compiler triggers the allocations, inlines the equals method and returns `true`.

```
  0x7f05384f7fda:   mov    %rsi,%rdi
  0x7f05384f7fdd:   mov    0x10(%rsi),%r10d        ; move 'size' into register r10d
  0x7f05384f7fee:   movslq %r10d,%rcx              ; sign-extend the value in r10d into rcx
  0x7f05384f7ff1:   mov    0xc(%rsi),%r8d          ; move 'value' into r8d
  0x7f05384f7ff5:   lea    (%r8,%r8,1),%ebp        ; ebp = r8 + r8 * 1
  ...
  <--- Allocates the HeavyWrapper wrapper object --->
  ...                       
  0x7f05384f80ed:   mov    $0x1,%eax               ; set return value to true
  ...
  0x7f05384f8104:   ret
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler method returns `true` (since the `HeavyWrapper` objects are equal), optimizing the allocations.

```
    0x7fb9c2da03c0:   cmpl   $0x0,0x10(%rsi)          ; compare 'size' agaist 0x0
  ╭ 0x7fb9c2da03c4:   jl     0x7fb9c2da03ee           ; jump if 'size' is less than 0x0 (branch not taken)
  │ 0x7fb9c2da03ca:   mov    $0x1,%eax                ; set return value to true
  │ ...
  │ 0x7fb9c2da03ed:   ret    
  ↘ ...
    0x7fb9c2da0400:   call   0x7fb9c26ff17a           ; new array
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler performs the same optimization as the Oracle GraalVM JIT compiler.

### Conclusions

In cases where the object does not escape the method or the thread (e.g., `no_escape`, `no_escape_array_obj`), all compilers are able to eliminate the heap allocations.

In cases where the object is passed as an argument but still does not escape the current thread (e.g., `arg_escape_obj`) or is guarded by a global boolean condition (even though that condition does not allow the object to escape; e.g., `branch_escape_obj`), and the object remains visible only to the current thread, only the GraalVM compilers (Oracle GraalVM JIT and GraalVM CE JIT) can eliminate unnecessary allocations.

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

**Note:** The C2 JIT compiler has an optimization that first tries to spill onto the FPU registers before spilling onto the stack.
This optimization is enabled by default and can be disabled by using the `-XX:-UseFPUForSpilling` flag.

Source code: [StackSpillingBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark.java)

[![StackSpillingBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/StackSpillingBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/StackSpillingBenchmark.svg?raw=true)

### Analysis of load_store_spill_use_fpu

The JIT compilers perform similar in all the benchmarks except for the `load_store_spill_use_fpu` benchmark.
Therefore, the analysis will focus on the `load_store_spill_use_fpu` benchmark.

#### C2 JIT Compiler

The C2 JIT compiler is able to use the FPU registers to spill intermediate values before using the stack. This can be
observed by looking at the generated assembly code. Below is a snippet:

```
  0x7f11bc63ab76:   mov    0x38(%r11),%r10d             ; load field load11 in scratch register %r10d
  0x7f11bc63ab7a:   vmovd  %r10d,%xmm14                 ; move scratch register %r10d in %xmm14
  0x7f11bc63ab7f:   mov    0x3c(%r11),%r10d             ; load field load12 in scratch register %r10d
  0x7f11bc63ab83:   vmovd  %r10d,%xmm15                 ; move scratch register %r10d in %xmm15
  0x7f11bc63ab88:   mov    0x40(%r11),%r11d             ; load field load13 in register %r11d
  0x7f11bc63ab8c:   vmovq  %xmm0,%r10                   ; move `this` pointer in %r10
  0x7f11bc63ab91:   mov    0x44(%r10),%r9d              ; load field load14 in register %r9d
  ...
  0x7f11bc63ac01:   mov    %r9d,0xa8(%rax)              ; store value of load14 to field store14
  0x7f11bc63ac08:   mov    %r11d,0xa4(%rax)             ; store value of load13 to field store13
  0x7f11bc63ac0f:   vmovd  %xmm15,%r10d                 ; move %xmm15 (field load12) in scratch register %r10d
  0x7f11bc63ac14:   mov    %r10d,0xa0(%rax)             ; store scratch register %r10d to field store12
  0x7f11bc63ac1b:   vmovd  %xmm14,%r10d                 ; move %xmm14 (field load11) in scratch register %r10d
  0x7f11bc63ac20:   mov    %r10d,0x9c(%rax)             ; store scratch register %r10d to field store11 
```

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

The Oracle GraalVM JIT compiler and the GraalVM CE JIT compiler do not perform (in this benchmark) the FPU optimization
C2 does. Therefore, both compilers will spill intermediate values onto the stack once they run out of available registers.

```
  0x7fd0c6d82c37:   mov    0x34(%r10),%esi              ; load field load10 in register %esi
  0x7fd0c6d82c3b:   mov    0x38(%r10),%r11d             ; load field load11 in scratch register %r11d
  0x7fd0c6d82c3f:   mov    %r11d,0x4c(%rsp)             ; store value of load11 to stack
  0x7fd0c6d82c44:   mov    0x3c(%r10),%r11d             ; load field load12 in scratch register %r11d
  0x7fd0c6d82c48:   mov    %r11d,0x48(%rsp)             ; store value of load12 to stack
  0x7fd0c6d82c4d:   mov    0x40(%r10),%r11d             ; load field load13 in scratch register %r11d
  0x7fd0c6d82c51:   mov    %r11d,0x44(%rsp)             ; store value of load13 to stack
  0x7fd0c6d82c56:   mov    0x44(%r10),%r11d             ; load field load14 in scratch register %r11d
  0x7fd0c6d82c5a:   mov    %r11d,0x40(%rsp)             ; store value of load14 to stack
  ...
  0x7fd0c6d82d01:   mov    %esi,0x98(%r10)              ; store value of load10 to field store10
  0x7fd0c6d82d08:   mov    0x4c(%rsp),%r11d             ; load value of load11 from stack in scratch register %r11d 
  0x7fd0c6d82d0d:   mov    %r11d,0x9c(%r10)             ; store value of load11 to field store11
  0x7fd0c6d82d14:   mov    0x48(%rsp),%r11d             ; load value of load12 from stack in scratch register %r11d
  0x7fd0c6d82d19:   mov    %r11d,0xa0(%r10)             ; store value of load12 to field store12
  0x7fd0c6d82d20:   mov    0x44(%rsp),%r11d             ; load value of load13 from stack in scratch register %r11d
  0x7fd0c6d82d25:   mov    %r11d,0xa4(%r10)             ; store value of load13 to field store13
  0x7fd0c6d82d2c:   mov    0x40(%rsp),%r11d             ; load value of load14 from stack in scratch register %r11d
  0x7fd0c6d82d31:   mov    %r11d,0xa8(%r10)             ; store value of load14 to field store14
```

### Conclusions

The C2 JIT compiler is able to use the FPU registers to spill intermediate values before using the stack. This optimization
does not happen (for this benchmark) in the Oracle GraalVM JIT compiler and the GraalVM CE JIT compiler.

## TailRecursionBenchmark

A [tail-recursive](https://en.wikipedia.org/wiki/Tail_call) function is a function where the last operation before the function returns is an invocation to the function itself.
Tail-recursive optimization avoids allocating a new stack frame by re-writing the method into a completely iterative fashion.

```
 @Benchmark
  public long tail_recursive() {
    return recursive(n, 0);
  }
  
  private long recursive(int n, long sum) {
    if (n == 0) {
      return sum;
    } else {
      return recursive(n - 1, sum + A[n % size]);
    }
  }  
```

Source code: [TailRecursionBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/TailRecursionBenchmark.java)

[![TailRecursionBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/TailRecursionBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/TailRecursionBenchmark.svg?raw=true)

### Analysis of tail_recursive

The analysis below pertains to the `tail_recursive` (i.e., `recursive`) method, which is more interesting due to the highest differences in performance.

#### C2 JIT Compiler

The C2 JIT compiler is capable of devirtualizing the tail `recursive` virtual call and performs partial inlining up to a depth of 2.

```
  recursive()
  
  ↗ 0x7fc12063aec0:   mov    %eax,-0x14000(%rsp)
  │ ...
  │ 0x7fc12063aee0:   test   %edx,%edx                    ; check if edx ('n') is zero
  │ 0x7fc12063aee2:   je     0x7fc12063af73               ; jump if edx ('n') is zero
  │ 0x7fc12063aee8:   mov    0x14(%rsi),%r8d              ; load array ('A') into r8d
  │ ...
  │ <-- Calculate 'n' modulo size ('1024') and store the result in r10d -->
  │ ...
  │ 0x7fc12063af07:   mov    0xc(%r12,%r8,8),%ebx         ; load array ('A') length
  │ 0x7fc12063af0c:   mov    %edx,%ebp
  │ 0x7fc12063af0e:   dec    %ebp
  │ 0x7fc12063af10:   cmp    %ebx,%r10d                   ; compare the array ('A') length against r10d
  │ 0x7fc12063af13:   jae    0x7fc12063af78               ; jump if greater than or equal
  │ 0x7fc12063af19:   lea    (%r12,%r8,8),%r11
  │ 0x7fc12063af1d:   movslq 0x10(%r11,%r10,4),%rax       ; load the array ('A') element value in rax
  │ 0x7fc12063af22:   add    %rcx,%rax                    ; add rcx ('sum') to rax (array element)
  │ ...
  │ 0x7fc12063af2a:   lea    -0x2(%rdx),%r9d              ; r9d = rdx - 0x2 (i.e., recursive inlining depth)
  │ ...
  │ <-- Similar pattern for adding the next element of the array -->
  │ ...
  │ 0x7fc12063af4d:   add    %rax,%rcx                    ; accumulate sum to rcx ('sum')
  │ 0x7fc12063af50:   mov    %r9d,%edx                    ; move r9d to edx
  ╰ 0x7fc12063af53:   call   0x7fc12063aec0               ; <--- recursive call to itself
                                                          ; invokevirtual recursive
                                                          ; - TailRecursionBenchmark::recursive@23 (line 86)
                                                          ; - TailRecursionBenchmark::recursive@23 (line 86)
                                                          ; {optimized virtual_call}
  ; rcx stores the sum of array ('A') elements                                                 
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT compiler is able to devirtualize the tail `recursive` virtual call, nevertheless does not perform any inlining of the `recursive` method.

```
  recursive()
  
  0x7f362ed7f860:   test   %edx,%edx                  ; check if edx ('n') is zero
  0x7f362ed7f862:   je     0x7f362ed7f8ce             ; jump if edx ('n') is zero
  0x7f362ed7f868:   mov    0x14(%rsi),%r10d           ; load array ('A') into r10d
  ...
  <-- calculate 'n' modulo size ('1024') and store result in r8d -->
  ...
  0x7f362ed7f887:   cmp    0xc(,%r10,8),%r8d          ; compare r8d against the array ('A') length
  0x7f362ed7f88f:   jae    0x7f362ed7f8ee             ; jump if greater than or equal
  0x7f362ed7f895:   shl    $0x3,%r10                  ; shift left by 3 (multiply by 8)
  0x7f362ed7f899:   dec    %edx                       ; decrement edx ('n')
  0x7f362ed7f89b:   movslq 0x10(%r10,%r8,4),%r10      ; load element from array ('A') into r10
  0x7f362ed7f8a0:   add    %r10,%rcx                  ; add r10 to rcx ('sum')
  0x7f362ed7f8a3:   call   0x7f362e764380             ; <--- recursive call to itself
                                                      ; invokevirtual recursive 
                                                      ; - TailRecursionBenchmark::recursive@23 (line 86)
                                                      ; {optimized virtual_call}
  ; rcx stores the sum of array ('A') elements                                                 
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler is capable of devirtualizing the tail `recursive` virtual call and performs partial inlining up to a depth of 6.

```
  recursive()

  ↗ 0x7f603b23ffc0:   mov    %eax,-0x14000(%rsp)
  │ ...
  │ 0x7f603b23ffe0:   test   %edx,%edx                ; check if edx ('n') is zero
  │ 0x7f603b23ffe2:   je     0x7f603b24015f           ; jump if edx ('n') is zero
  │ 0x7f603b23ffe8:   mov    0x14(%rsi),%r10d         ; load array ('A') into r10d
  │ 0x7f603b23ffec:   mov    0xc(,%r10,8),%r11d       ; load array ('A') length
  │ ...
  │ <-- calculate 'n' modulo size ('1024') and store result in r9d -->
  │ ...
  │ 0x7f603b24000f:   cmp    %r9d,%r11d               ; compare the array ('A') length against r9d
  │ 0x7f603b240012:   jbe    0x7f603b240192           ; jump if below than or equal 
  │ 0x7f603b240018:   shl    $0x3,%r10                ; shift left by 3 (multiply by 8) for array ('A')       
  │ 0x7f603b24001c:   movslq 0x10(%r10,%r9,4),%r8     ; load the array ('A') element value in r8
  │ 0x7f603b240021:   add    %rcx,%r8                 ; add r8 (array element) to rcx ('sum')
  │ ...
  │ <-- similar pattern for adding the next fifth elements of the array -->
  │ ...
  │ 0x7f603b24012b:   lea    -0x6(%rdx),%edx          ; edx = rdx - 0x6 (i.e., recursive inlining depth)
  │ ...
  │ 0x7f603b240136:   mov    %r8,%rcx                 ; Move r8 to rcx ('sum')
  ╰ 0x7f603b24013b:   call   0x7f603b23ffc0           ; <--- recursive call to itself
                                                      ; invokevirtual recursive
                                                      ; - TailRecursionBenchmark::recursive@23 (line 86)
                                                      ; - TailRecursionBenchmark::recursive@23 (line 86)
                                                      ; - TailRecursionBenchmark::recursive@23 (line 86)
                                                      ; - TailRecursionBenchmark::recursive@23 (line 86)
                                                      ; - TailRecursionBenchmark::recursive@23 (line 86)
                                                      ; - TailRecursionBenchmark::recursive@23 (line 86)
                                                      ;   {optimized virtual_call}
    ; rcx stores the sum of array ('A') elements                                                 
 ```

### Conclusions

The  main difference in case of `tail_recursive` benchmark lies in the inlining capability of each compiler for tail recursive virtual calls:
- The C2 JIT compiler performs partial inlining up to a depth of 2.
- The Oracle GraalVM JIT compiler refrains from partial inlining, resulting in relatively lower performance in this benchmark
- The GraalVM CE JIT compiler triggers partial inlining up to a depth of 6.

## TypeCheckBenchmark

This benchmark checks the performance of `instanceof` type check using multiple secondary super types (i.e., interfaces), none being of an `AutoCloseable` type.

```
  private Object[] instances;
  
  @Param({"1", "2", "3", "4"})
  private int types;
  
    instances = new Object[types];
    switch (types) {
      case 1:
        instances[0] = ManySecondarySuperTypes_1.Instance;
        break;
      case 2:
        instances[0] = ManySecondarySuperTypes_1.Instance;
        instances[1] = ManySecondarySuperTypes_2.Instance;
        break;
      // ...
      default:
        throw new IllegalStateException("Unexpected value: " + types);
    }  
  
  @Benchmark
  public boolean instanceof_type_check() {
    return closeNotAutoCloseable(instances[nextPosition()]);
  }

  public static boolean closeNotAutoCloseable(Object o) {
    // it searches through the secondary supers (i.e., an array of objects) for a type match
    // but does not find one since "o" is not an "AutoCloseable" type
    if (o instanceof AutoCloseable) {
      try {
        ((AutoCloseable) o).close();
        return true;
      } catch (Exception ignore) {
        return false;
      }
    } else {
      // it always takes this path
      return false;
    }
  }
  
  private enum ManySecondarySuperTypes_1 implements I1, I2, I3, I4, I5, I6, I7, I8 {
    Instance
  }
  
  private enum ManySecondarySuperTypes_2 implements I1, I2, I3, I4, I5, I6, I7, I8 {
    Instance
  }  
```

Java, being a type-safe language, requires runtime type checking (based on metadata) to determine type compatibility. Within Hotspot, the class word contains a native pointer to the [VM Klass](https://github.com/openjdk/jdk/blob/master/src/hotspot/share/oops/oop.hpp#L57) instance, including extensive metadata such as superclass types, implemented interfaces, and [more](https://github.com/openjdk/jdk/blob/master/src/hotspot/share/oops/klass.hpp#L128-L133).
The efficiency of those runtime checks depends on the type metadata as well as further optimizations performed by the compiler.

**Note**: The difference between this benchmark and the `TypeCheckSlowPathBenchmark` lies in the fact that, in this benchmark, none of the types used `ManySecondarySuperTypes_{1, 2, 3, 4}` are instances of `AutoCloseable`. 
Furthermore, in the setup method of the `TypeCheckSlowPathBenchmark`, both an `AutoCloseable` object and a `ManySecondarySuperTypes_{16, 32, 64, 128, 256}` object are used, forcing all compilers to compile both branches of the `if` condition.

Source code: [TypeCheckBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckBenchmark.java)

[![TypeCheckBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/TypeCheckBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/TypeCheckBenchmark.svg?raw=true)

### Analysis of types 1

The analysis below pertains to the `types=1` scenario, which is more interesting due to the highest differences in performance.

#### C2 JIT Compiler

The C2 JIT compiler takes the slow path and searches through the secondary supers (i.e., an array of interfaces) for a `AutoCloseable` type match. Since it does not find one, it returns `false`.

```
      0x7f291c63815a:   mov    0xc(%rsi),%r10d              ; get field obj
      0x7f291c638160:   mov    0x8(%r12,%r10,8),%r8d
      0x7f291c638165:   movabs $0x7f28a300bab8,%rax         ; {metadata(&apos;java/lang/AutoCloseable&apos;)}
      0x7f291c63816f:   movabs $0x7f28a3000000,%rsi         ; load known Klass* for ManySecondarySuperTypes_1
      0x7f291c638179:   add    %r8,%rsi
      0x7f291c63817c:   mov    0x20(%rsi),%r11              ; the cache field
      0x7f291c638180:   cmp    %rax,%r11                    ; compare the 'obj' type against AutoCloseable
  ╭   0x7f291c638183:   je     0x7f291c6381b7               ; jump if the types match (branch not taken)
  │   0x7f291c638185:   mov    0x28(%rsi),%rdi              ; load the secondary supertypes array
  │   0x7f291c638189:   mov    (%rdi),%ecx                  ; load the length of the array
  │   0x7f291c63818b:   add    $0x8,%rdi                    ; skip the length field
  │   0x7f291c63818f:   test   %rax,%rax
  │   0x7f291c638192:   repnz scas %es:(%rdi),%rax          ; loop over the array
  │                                                         ; ^ this loop is where the execution spends most of the time
  │╭  0x7f291c638195:   jne    0x7f291c63819f               ; if not found, avoid setting the cache field
  ││  0x7f291c63819b:   mov    %rax,0x20(%rsi)              ; set the cache field
  │↘  0x7f291c63819f:   nop
  │ ╭ 0x7f291c6381a0:   je     0x7f291c6381b7               ; if found, jump to the true branch of the type check
  │ │ 0x7f291c6381a2:   xor    %eax,%eax                    ; return false
  │ │ ...
  │ │ 0x7f291c6381b6:   ret
  ↘ ↘ ...
      0x7f291c6381bf:   call   0x7f291c0c9f00               ; {runtime_call UncommonTrapBlob}
```

#### Oracle GraalVM JIT Compiler

The GraalVM JIT compiler takes the fast path by directly checking against the `ManySecondarySuperTypes_1` type. Since there is a match, it simply returns `false` without searching through the secondary super types.

```
  0x7ff7d6d7ecbf:   mov    0xc(%rsi),%eax               ; get field obj
  0x7ff7d6d7ecc2:   cmpl   $0x102bd38,0x8(,%rax,8)      ; compare the 'obj' type against ManySecondarySuperTypes_1
                                                        ; {metadata(&apos;TypeCheckBenchmark$ManySecondarySuperTypes_1&apos;)}
╭ 0x7ff7d6d7eccd:   jne    0x7ff7d6d7ecef               ; jump if not the same type
│ 0x7ff7d6d7ecd3:   mov    $0x0,%eax                    ; return false
│ ...
│ 0x7ff7d6d7ecee:   ret
↘ 0x7ff7d6d7ecef:   movl   $0xffffffcd,0x484(%r15)      ; instanceof check
  0x7ff7d6d7ecfa:   movq   $0x14,0x490(%r15)
  0x7ff7d6d7ed05:   call   0x7ff7d676a17a               ; {runtime_call DeoptimizationBlob}
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT compiler performs the same optimization as the Oracle GraalVM JIT compiler.

### Conclusions

The GraalVM compilers (Oracle GraalVM JIT and GraalVM CE JIT) optimize the type check by specializing the if condition (i.e., comparing against the `ManySecondarySuperTypes_1` type) and taking the fast path, as a match is found, unlike the C2 JIT compiler, which always checks the type against the supertypes array (no match is found).

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
  }  
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

Source code: [TypeCheckScalabilityBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckScalabilityBenchmark.java)

[![TypeCheckScalabilityBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/TypeCheckScalabilityBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/TypeCheckScalabilityBenchmark.svg?raw=true)

### Analysis of is_duplicated

When `typePollution` is false, the benchmark uses a single type `DuplicatedContext` and the compilers are
able to optimize and avoid checking the cache and the secondary supertypes array. In this case, a guard is used
that checks if the receiver type is `DuplicatedContext` and then returns `true`.

```
  0x7fda40635fda:   mov    0x10(%rsi),%r10d             ; read oop msg in %r10d
  0x7fda40635fde:   xchg   %ax,%ax                      ; nop
  0x7fda40635fe0:   mov    0x8(%r12,%r10,8),%r8d        ; read klass word of object in %r8d 
  0x7fda40635fe5:   cmp    $0x102acf8,%r8d              ; compare against DuplicatedContext klass
  0x7fda40635fec:   jne    0x7fda40636006               ; jump to deoptimization stub if not equal
  0x7fda40635fee:   mov    $0x1,%eax                    ; move true to %eax
  0x7fda40635ff3:   add    $0x20,%rsp                   ; pop the stack
  0x7fda40635ff7:   pop    %rbp                         ; pop the frame pointer
  0x7fda40635ff8:   cmp    0x450(%r15),%rsp             ; safepoint poll check
  0x7fda40635fff:   ja     0x7fda40636034               ; jump to safepoint handler if needed
  0x7fda40636005:   ret                                 ; return
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
slower even when the number of threads running is equal to one (no false sharing occurring). That is, the C2 JIT compiler is
in general slower at checking the secondary super types array.
The reason behind this is explained in the `TypeCheckSlowPathBenchmark`.

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

Overall, the Graal based JIT compilers perform close in performance. The only difference is that the GraalVM CE JIT
compiler generates additional memory loads for the `klass` word of the object before checking the secondary super types array.
Additionally, the error margins of the two JIT compilers are quite large to draw any clear conclusions.

For reference, below is a snippet of the generated assembly code for the GraalVM CE JIT compiler:
```
  0x7f82a323d682:   mov    0x8(,%rax,8),%r10d           ; load klass word of the object in %r10d
  0x7f82a323d68a:   movabs $0x7f8227000000,%r11         ; load the base address of the metaspace in %r11
  0x7f82a323d694:   lea    (%r11,%r10,1),%r8            ; compute the address of the klass of the object
  0x7f82a323d698:   movabs $0x7f822802b798,%r11         ; move klass Context to %r11
  0x7f82a323d6a2:   cmp    0x20(%r8),%r11               ; compare the _secondary_super_cache with the klass Context
  0x7f82a323d6a6:   je     0x7f82a323d6b9               ; if equal jump to the fast path 
  0x7f82a323d6ac:   cmp    $0x102b798,%r10d             ; compare the klass word with Context klass
  0x7f82a323d6b3:   jne    0x7f82a323d74e               ; if not equal jump to the slow path that iterates through the secondary super types array
  0x7f82a323d6b9:   mov    0x8(,%rax,8),%r10d           ; Additional! load again the klass word of the object in %r10d
  0x7f82a323d6c1:   movabs $0x7f8227000000,%r11         ; Additional! load the base address of the metaspace in %r11
  0x7f82a323d6cb:   lea    (%r11,%r10,1),%r8            ; Additional! compute the address of the klass of the object
  0x7f82a323d6cf:   movabs $0x7f822802b990,%r11         ; Additional! move klass InternalContext to %r11
  0x7f82a323d6d9:   nopl   0x0(%rax)                    ; nop
  0x7f82a323d6e0:   cmp    0x20(%r8),%r11               ; compare the _secondary_super_cache with the klass InternalContext
  0x7f82a323d6e4:   je     0x7f82a323d6f7               ; if equal jump to the fast path
  0x7f82a323d6ea:   cmp    $0x102b990,%r10d             ; compare klass InternalContext to %r10d
  0x7f82a323d6f1:   jne    0x7f82a323d785               ; if not equal jump to the slow path that iterates through the secondary super types array
  ...
```

Compared to the equivalent snippet generated by the Oracle GraalVM JIT compiler:
```
  0x7fcda2d7e5e2:   mov    0x8(,%rax,8),%r10d           ; load the klass word of the object in %r10d
  0x7fcda2d7e5ea:   movabs $0x7fcd27000000,%rax         ; load the base address of the metaspace in %rax
  0x7fcda2d7e5f4:   lea    (%rax,%r10,1),%r11           ; compute the address of the klass of the object
  0x7fcda2d7e5f8:   movabs $0x7fcd2802b328,%rax         ; move klass Context to %rax
  0x7fcda2d7e602:   cmp    0x20(%r11),%rax              ; compare the _secondary_super_cache with the klass Context
  0x7fcda2d7e606:   je     0x7fcda2d7e619               ; if equal jump to the fast path
  0x7fcda2d7e60c:   cmp    $0x102b328,%r10d             ; compare the klass word with Context klass
  0x7fcda2d7e613:   jne    0x7fcda2d7e66e               ; if not equal jump to the slow path that iterates through the secondary super types array
  0x7fcda2d7e619:   movabs $0x7fcd2802b520,%rax         ; move klass InternalContext to %rax
  0x7fcda2d7e623:   cmp    0x20(%r11),%rax              ; compare the _secondary_super_cache with the klass InternalContext
  0x7fcda2d7e627:   je     0x7fcda2d7e63a               ; if equal jump to the fast path
  0x7fcda2d7e62d:   cmp    $0x102b520,%r10d             ; compare the klass word with InternalContext klass
  0x7fcda2d7e634:   jne    0x7fcda2d7e6a5               ; if not equal jump to the slow path that iterates through the secondary super types array
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

Source code: [TypeCheckSlowPathBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/TypeCheckSlowPathBenchmark.java)

[![TypeCheckSlowPathBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/TypeCheckSlowPathBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/TypeCheckSlowPathBenchmark.svg?raw=true)

### Analysis of instanceof_type_check

For a low number of secondary super types `(16, 32, 64)`, the GraalVM JIT compilers perform similarly and are faster than C2 JIT compiler.
The performance gap between the Graal and C2 compilers decreases however as the number of secondary super types
increases.

#### C2 JIT Compiler

The C2 JIT compiler loops through the secondary super types array using a `repnz scas` [instruction](https://www.felixcloutier.com/x86/rep:repe:repz:repne:repnz#description).

```
   0.17% 0x7f1e7863b2a6:   mov    0x28(%rsi),%rdi        ; load the secondary_supers array in %rdi 
         0x7f1e7863b2aa:   mov    (%rdi),%ecx            ; load the size of the array in %ecx
   0.46% 0x7f1e7863b2ac:   add    $0x8,%rdi              ; skip the length field
         0x7f1e7863b2b0:   test   %rax,%rax              ; set the zero flag to 0
  83.32% 0x7f1e7863b2b3:   repnz scas %es:(%rdi),%rax    ; scan the array for the expected klass (AutoCloseable)
   6.34% 0x7f1e7863b2b6:   jne    0x7f1e7863b2c0         ; if not found jump to the false branch 
         0x7f1e7863b2bc:   mov    %rax,0x20(%rsi)        ; update the secondary_super_cache with the klass found
   1.56% 0x7f1e7863b2c0:   je     0x7f1e7863b285         ; jump to the true branch of the type check
         0x7f1e7863b2c2:   xor    %eax,%eax
         0x7f1e7863b2c4:   jmp    0x7f1e7863b293         ; jump to the false branch of the type check
```

In modern CPUs, the `repnz (scas)` class of instructions can have a large setup overhead and therefore be slower than a
loop for a small number of elements. The performance of this class of instructions very much depends on the vendor and
CPU microarchitecture.

#### Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler

Both GraalVM JIT compilers iterate over the secondary super types array using a loop:

```
   0.30% 0x7f342f2470e0:   mov    %ecx,%ebx               ; move the loop counter in %ebx
         0x7f342f2470e2:   shl    $0x3,%ebx               ; multiply the loop counter by 8
  44.80% 0x7f342f2470e5:   lea    0x8(%rbx),%ebx          ; skip the length field; compute the byte offset of the element in the secondary_supers array in %ebx
         0x7f342f2470e8:   movslq %ebx,%rbx               ; sign extend to 64 bits
   0.34% 0x7f342f2470eb:   mov    (%r8,%rbx,1),%rbx       ; load the klass from the secondary_supers array at index %ecx
   0.47% 0x7f342f2470ef:   cmp    %rbx,%r10               ; compare the klass with the expected klass (AutoCloseable)
         0x7f342f2470f2:   je     0x7f342f247106          ; if equal jump and store the klass in the secondary_super_cache
  44.10% 0x7f342f2470f8:   inc    %ecx                    ; increment the loop counter
         0x7f342f2470fa:   cmp    %ecx,%r9d               ; compare the loop counter with the length of the secondary_supers array
         0x7f342f2470fd:   jg     0x7f342f2470e0          ; if greater jump to the beginning of the loop 
   0.33% 0x7f342f2470ff:   mov    $0x0,%eax               ; move false to %eax
   0.79% 0x7f342f247104:   jmp    0x7f342f24709c          ; jump to not found label
         0x7f342f247106:   mov    %r10,0x20(%r11)         ; update the secondary_super_cache with the klass found
         0x7f342f24710a:   jmp    0x7f342f24708b          ; match found so jump to found label
```

### Conclusions

The C2 JIT compiler can be slower than the GraalVM JIT compilers when iterating through the secondary super types array (i.e.
performing `instanceof` checks), especially when the number of secondary super types is not very large.

One of the reasons is that the C2 JIT compiler uses the `repnz scas` instruction which can be slow on modern x86 architectures.
This issue is discussed in the [JDK mailing list](https://mail.openjdk.org/pipermail/hotspot-runtime-dev/2020-August/041056.html)
and in [JDK-8251318](https://bugs.openjdk.org/browse/JDK-8251318).

## JIT Geometric Mean

This section describes the normalized geometric mean (GM) for the entire JIT-related benchmark category, having in total 305 benchmarks.
This is purely informative to have a high-level understanding of the overall benchmark scores.

The process of generating the normalized geometric mean is:
- All benchmark scores are converted to the same unit (e.g., "ns/op").
- The resulting geometric mean is normalized to OpenJDK (i.e., C2 JIT).

## x86_64

Rank | JVM distribution   | Arcitecture | Normalized Geometric Mean | Nr. of Benchmarks | Unit
-----|--------------------|-------------|---------------------------|-------------------|--------
1    | Oracle GraalVM     | x86_64      | 0.64                      | 305               | ns/op
2    | OpenJDK            | x86_64      | 1                         | 305               | ns/op
3    | GraalVM CE         | x86_64      | 1.06                      | 305               | ns/op

_The first in the row is the fastest, and the last in the row is the slowest._

## arm64

Rank | JVM distribution   | Arcitecture | Normalized Geometric Mean | Nr. of Benchmarks | Unit
-----|--------------------|-------------|---------------------------|-------------------|--------
1    | Oracle GraalVM     | x86_64      | 0.76                      | 305               | ns/op
2    | OpenJDK            | x86_64      | 1                         | 305               | ns/op
3    | GraalVM CE         | x86_64      | 1.31                      | 305               | ns/op

_The first in the row is the fastest, and the last in the row is the slowest._

To summarize, on both architectures the normalized geometric mean is consistent:

1. Oracle GraalVM JIT is the fastest.
2. C2 JIT is in the middle.
3. GraalVM CE JIT is the slowest.

# API

This set of benchmarks targets common APIs from both the Java Platform, Standard Edition (Java SE) and the Java Development Kit (JDK).

## API Benchmarks

The API benchmarks are measured in [average time per operation](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/annotations/Mode.java#L52), which is the score reported by the JMH.

**Note:** Only a small subset of the API benchmarks are included here; in general, we selected those with significant performance differences or representing various APIs. For the complete set, please refer to the repository and the generated plots.

## AesEcbCryptoBenchmark

Encrypts and decrypts data using the Advanced Encryption Standard (AES) algorithm in Electronic Codebook (ECB) mode with both padding and no padding options. 
The process involves various key sizes. It's important to note that AES/ECB mode does not require initialization vectors (IVs) or GCM (Galois/Counter Mode), unlike some other encryption modes.

Source code: [AesEcbCryptoBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/crypto/AesEcbCryptoBenchmark.java)

[![AesEcbCryptoBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/AesEcbCryptoBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/AesEcbCryptoBenchmark.svg?raw=true)

## ByteArrayInputStreamBenchmark

Measures the time it takes to read byte array chunks using a ByteArrayInputStream and includes a sanity check to verify the number of bytes read.

**Note:** This I/O benchmark might be affected by various factors, including:
- Underlying File System: Different file systems (such as NTFS, ext4, FAT32) might employ distinct strategies for caching, block allocation, and metadata management, thereby impacting I/O performance.
- Hardware: The hardware utilized, including specifications of the hard drive or solid-state drive (SSD),  such as rotational speed, data transfer rates, and seek times.
- Disk Subsystem: The physical hardware components responsible for storing and retrieving data, encompassing factors like disk speed, storage technology (HDD vs. SSD), and more.
- Operating System Disk Scheduler: The OS disk scheduler manages the order in which read and write requests are processed on the storage device. Various schedulers prioritize requests differently, influencing the sequence and efficiency of I/O operations.
- Caching: Both the OS and hardware often employ caching mechanisms to boost the I/O performance. This entails frequently accessed data being stored in a cache to curtail the necessity of accessing slower storage media, such as disks.
- File Size and Data Patterns: The size of files being read or written and the patterns of data access can exert influence on I/O performance. Sequential access might outpace random access, and disparities in performance characteristics might emerge between larger and smaller files.

Source code: [ByteArrayInputStreamBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/diskio/ByteArrayInputStreamBenchmark.java)

[![ByteArrayInputStreamBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/ByteArrayInputStreamBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/ByteArrayInputStreamBenchmark.svg?raw=true)

## DateTimeFormatterBenchmark

Evaluates the performance of DateTimeFormatter creation using various styles and patterns available in Java's DateTimeFormatter API. 
This benchmark measures the efficiency of DateTimeFormatter instantiation for localized date, time, and datetime formats employing different styles. 
Additionally, it assesses the speed of DateTimeFormatter creation using a custom-defined pattern with specific formatting elements and locale.

Source code: [DateTimeFormatterBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/time/DateTimeFormatterBenchmark.java)

[![DateTimeFormatterBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DateTimeFormatterBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DateTimeFormatterBenchmark.svg?raw=true)

## DsaEcSignatureBenchmark

The benchmark measures the performance of ECDSA (elliptic curve DSA) using different message lengths, key lengths and hash sizes.

Source code: [DsaEcSignatureBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/signature/DsaEcSignatureBenchmark.java)

[![DsaEcSignatureBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DsaEcSignatureBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DsaEcSignatureBenchmark.svg?raw=true)

## HmacCryptoBenchmark

Generates an HMAC (Hash-based Message Authentication Code) for an input byte array using various algorithms (e.g., MD5, SHA*).
No explicit provider is specified; thus, the standard JDK provider is used.

Source code: [HmacCryptoBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/crypto/HmacCryptoBenchmark.java)

[![HmacCryptoBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/HmacCryptoBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/HmacCryptoBenchmark.svg?raw=true)

## MessageDigestBenchmark

Generates a message digest (i.e., a hash representation) for an input byte array using various algorithms (e.g., MD5, SHA, SHA3).
No explicit provider is declared; thus, the standard JDK provider is utilized.

Source code: [MessageDigestBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/messagedigest/MessageDigestBenchmark.java)

[![MessageDigestBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/MessageDigestBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/MessageDigestBenchmark.svg?raw=true)

## StringConcatenationBenchmark

Benchmark measuring the performance of various concatenation methods using different data types (e.g., String, int, float, char, long, double, boolean, Object):
- `StringBuilder`
- `StringBuffer`
- `String.concat()`
- `plus` operator
- `StringTemplate`

The input String and char contain characters encoded in either `Latin-1` or `UTF-16`.

**Note:** The benchmark might encompass different allocations, potentially impacting the overall results.

```
  @Benchmark
  public String string_builder() {
    // Do not explicitly set a capacity
    return new StringBuilder()
        .append(aString).append(anInt).append(aFloat).append(aChar)
        .append(aLong).append(aDouble).append(aBool).append(anObject)
        .toString();
  }

  @Benchmark
  public String string_buffer() {
    // Do not explicitly set a capacity
    return new StringBuffer()
        .append(aString).append(anInt).append(aFloat).append(aChar)
        .append(aLong).append(aDouble).append(aBool).append(anObject)
        .toString();
  }

  @Benchmark
  public String string_concat() {
    return new String()
        .concat(aString).concat(valueOf(anInt)).concat(valueOf(aFloat)).concat(valueOf(aChar))
        .concat(valueOf(aLong)).concat(valueOf(aDouble)).concat(valueOf(aBool)).concat(valueOf(anObject));
  }

  @Benchmark
  public String plus_operator() {
    return aString + anInt + aFloat+ aChar + aLong + aDouble + aBool + anObject ;
  }

  @Benchmark
  public String string_template() {
    return STR."\{aString}\{anInt}\{aFloat}\{aChar}\{aLong}\{aDouble}\{aBool}\{anObject}";
  }
```

Source code: [StringConcatenationBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/string/StringConcatenationBenchmark.java)

[![StringConcatenationBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/StringConcatenationBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/StringConcatenationBenchmark.svg?raw=true)

### Remarks

The `STR` template processor (refer to [JEP 430: String Templates](https://openjdk.org/jeps/430)) and the `plus` operator exhibit lower execution times (i.e., better performance) compared to other methods tested in this benchmark.

## StringFormatBenchmark

This benchmark measures the performance of different formatting approaches utilizing various data types (e.g., String, int, float, char, long, double, boolean, Object) using different methods:
- `String.format()`
- `MessageFormat.format()` with both constant or dynamically allocated message formatter in the benchmark method
- `String.formatted()`
- `FormatProcessor`

The input String and char consist of characters encoded in either `Latin-1` or `UTF-16`.

**Note:** The benchmark might encompass different allocations, potentially impacting the overall results.

```
  @Benchmark
  public String string_format() {
    return String.format(
        "%s%d%.8f%s%d%.17f%b%s", aString, anInt, aFloat, aChar, aLong, aDouble, aBool, anObject);
  }

  @Benchmark
  public String message_format_new() {
    final MessageFormat mf =
        new MessageFormat(
            "{0}{1,number,0}{2,number,0.00000000}{3}{4,number,0}{5,number,0.00000000000000000}{6}{7,number,0}");
    return mf.format(new Object[] {aString, anInt, aFloat, aChar, aLong, aDouble, aBool, anObject});
  }
  
  @Benchmark
  public String message_format_constant() {
    return MESSAGE_FORMAT.format(new Object[] {aString, anInt, aFloat, aChar, aLong, aDouble, aBool, anObject});
  }

  @Benchmark
  public String string_formatted() {
    return "%s%d%.8f%s%d%.17f%b%s".formatted(aString, anInt, aFloat, aChar, aLong, aDouble, aBool, anObject);
  }

  @Benchmark
  public String format_processor() {
    return FMT."%s\{aString}%d\{anInt}%.8f\{aFloat}%s\{aChar}%d\{aLong}%.17f\{aDouble}%b\{aBool}%s\{anObject}";
  }
```

Source code: [StringFormatBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/string/StringFormatBenchmark.java)

[![StringFormatBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/StringFormatBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/StringFormatBenchmark.svg?raw=true)

### Remarks

The `FMT` template processor (refer to [JEP 430: String Templates](https://openjdk.org/jeps/430)) demonstrates significantly lower execution times (i.e., better performance) compared to all other methods tested in this benchmark. 

On the other side, `MessageFormat` shows considerably slower performance and should be avoided in real applications, either used directly or indirectly.

## StringPatternSplitBenchmark

Measures the performance of splitting a very long text (i.e., a sequence of words separated by empty spaces) by either one or two characters, using the below methods:
- `Pattern.split()`
- `String.split()`

`String.split()` has a fast-path for:
- one-char String and this character is not one of the RegEx's meta characters `.$|()[{^?*+\\`
- or two-char String and the first char is the backslash and the second is not the ascii digit or ascii letter.

`Pattern.split()` reuses the pattern, it saves a few cycles in comparison to String.split()

The number of allocations during this benchmark is not neglectable, and it influences the overall results. It could be partially mitigated by using a shorter text.

```
  @Param({"_", "__"})
  private String regexp;

  private String text;
  private Pattern pattern;

  @Benchmark
  public String[] string_split() {
    return text.split(regexp);
  }

  @Benchmark
  public String[] pattern_split() {
    return pattern.split(text);
  }
```

Source code: [StringPatternSplitBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/string/StringPatternSplitBenchmark.java)

[![StringPatternSplitBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/StringPatternSplitBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/StringPatternSplitBenchmark.svg?raw=true)

### Analysis of pattern_split

The flame graphs below pertain to the `pattern_split` method.

#### C2 JIT Compiler

[![StringPatternSplitBenchmar.png](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split-AverageTime-regexp-__/flame-cpu-forward.png?raw=true)](https://htmlpreview.github.io?https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/openjdk-hotspot-vm/com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split-AverageTime-regexp-__/flame-cpu-forward.html)

#### Oracle GraalVM JIT Compiler

[![StringPatternSplitBenchmark.png](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/graal-ee/com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split-AverageTime-regexp-__/flame-cpu-forward.png?raw=true)](https://htmlpreview.github.io?https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/graal-ee/com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split-AverageTime-regexp-__/flame-cpu-forward.html)

#### GraalVM CE JIT Compiler

[![StringPatternSplitBenchmark.png](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split-AverageTime-regexp-__/flame-cpu-forward.png?raw=true)](https://htmlpreview.github.io?https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/flamegraph/graal-ce/com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split-AverageTime-regexp-__/flame-cpu-forward.html)

### Remarks

At first glance, it appears that the Oracle GraalVM JIT compiler does a better job of inlining. However, a more in-depth 
analysis might be necessary to identify the differences, as they may not be very obvious to reveal based solely on the generated assembly code.

## VPThreadCpuBoundBenchmark

This benchmark evaluates the performance of running CPU-bound (or CPU-intensive) tasks, which are submitted to either a virtual thread executor service or a cached thread pool. 
Additionally, various backoff strategies (e.g., thread parking, yield, or none) are triggered while running CPU-bound tasks. These strategies may (or may not) unpin the virtual thread from its carrier.

A configurable number of tasks are submitted to an executor using a burst approach, and the benchmark awaits the completion of all these tasks. The executor is cached within the JMH state.
The level of parallelism for both platform and virtual threads is set to the same value to facilitate an evaluation of their performance under comparable conditions. 
The benchmark method accounts for the task submission cost to the initially idle executor, which, within the scope of this specific use case, is deemed negligible.
 
When a virtual thread executes CPU-bound code without involving any blocking I/O or other blocking JDK methods, the virtual thread cannot be unmounted. Consequently, it will not yield and may continue to occupy its carrier thread until it completes its computation. 
To address this, the CPU-bound tasks include explicit various backoff strategies (such as yielding, or parking) in an attempt to de-schedule the running thread and permit other threads to execute on the CPU, thereby facilitating the unmounting of the virtual thread from its carrier.

Source code: [VPThreadCpuBoundBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/thread/VPThreadCpuBoundBenchmark.java)

[![VPThreadCpuBoundBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/VPThreadCpuBoundBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/VPThreadCpuBoundBenchmark.svg?raw=true)

### Remarks

When the workload is CPU-bound, virtual threads may not offer a substantial improvement in application throughput compared to traditional platform threads. Additionally, in scenarios of CPU-bound workloads, having significantly more threads than processor cores does not necessarily enhance throughput.

As a side note, also using virtual threads solely for heavy in-memory processing may not align with their intended use case.

## VPThreadSynchronizationBenchmark

This benchmark evaluates the performance of running synchronized blocks in the context of virtual threads, comparing them with platform threads. 
The synchronization mechanism is implemented using lock objects, reentrant locks, and no locks at all. 
Additionally, various backoff strategies (e.g., thread parking, sleeping, or none) are triggered within the synchronized execution block.
These strategies may (or may not) unpin the virtual thread from its carrier.

A configurable number of tasks are submitted to an executor using a burst approach, and the benchmark awaits the completion of all these tasks. 
The executor is cached within the JMH state. The parallelism level for both platform and virtual threads is restricted the same value to evaluate their performance under comparable conditions. 
The benchmark method includes the cost of task submission to the initially idle executor, which, for this specific use case, is considered negligible.

**Note:** When a virtual thread executes code inside a synchronized block or method it cannot be unmounted during the blocking operation because it is pinned to its carrier (i.e., the platform thread).

The total number of tasks to be executed by either a virtual or a platform thread is proportional to the number of available
CPUs multiplied by a factor of `384` (i.e., which makes `384 x 6 = 2,304` on the particular `x86_64` target machine the benchmark was run on).

```
  @Param({"384"})
  private int loadFactor;

  @Param private LockType lockType;
  @Param private BackoffType backoffType;

  @Benchmark
  public void synchronized_calls(ExecutorState executor) throws InterruptedException {
    final CountDownLatch latch = new CountDownLatch(tasks);
    IntStream.range(0, tasks).forEach(i -> executor.service.submit(synchronizedWork(latch)));
    latch.await();
  }

  private Runnable synchronizedWork(CountDownLatch latch) {
    return switch (lockType) {
      case OBJECT_LOCK -> () -> {
        synchronized (objectLock) {
          try {
            backoff();
          } finally {
            latch.countDown();
          }
        }
      };
      case REENTRANT_LOCK -> () -> {
        reentrantLock.lock();
        try {
          backoff();
        } finally {
          reentrantLock.unlock();
          latch.countDown();
        }
      };
      case NO_LOCK -> () -> {
        try {
          backoff();
        } finally {
          latch.countDown();
        }
      };
    };
  }

  private void backoff() {
    switch (backoffType) {
      case NONE:
        break;
      case SLEEP:
        try {
          Thread.sleep(0, 1);
        } catch (InterruptedException e) {
          throw new RuntimeException(e);
        }
        break;
      case PARK:
        LockSupport.parkNanos(1);
        break;
      default:
        throw new UnsupportedOperationException("Unsupported backoff type " + backoffType);
    }
  }
```

Source code: [VPThreadSynchronizationBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/thread/VPThreadSynchronizationBenchmark.java)

[![VPThreadSynchronizationBenchmark_param_backoffType_NONE.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/VPThreadSynchronizationBenchmark_param_backoffType_NONE.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/VPThreadSynchronizationBenchmark_param_backoffType_NONE.svg?raw=true)

[![VPThreadSynchronizationBenchmark_param_backoffType_PARK.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/VPThreadSynchronizationBenchmark_param_backoffType_PARK.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/VPThreadSynchronizationBenchmark_param_backoffType_PARK.svg?raw=true)

### Analysis

#### Analysis of backoffType:NONE

In this scenario, platform threads demonstrate lower execution times (i.e., better performance) compared to virtual threads across the tested synchronization mechanisms. 
Based on the reported performance event statistics, the major differences between virtual and platform threads can be summarized as follows:

- Virtual threads exhibit slightly higher instructions per cycle (`IPC`) than platform threads.
- Platform threads have relatively lower cache misses (e.g., `L1-dcache-load-misses`, `LLC-load-misses`) than virtual threads.
- Platform threads tend to have less `branches` and `branch-misses` than platform virtual.
- `context-switches` occur more frequently in platform threads than in virtual threads.
- Virtual threads consume more CPU `cycles` than platform threads.

```
  // Platform thread stats
  
  Perf Event                 (lockType)  Mode               Score              Units
  IPC                       OBJECT_LOCK  avgt               0.596          insns/clk
  L1-dcache-load-misses     OBJECT_LOCK  avgt           42399.031               #/op
  LLC-load-misses           OBJECT_LOCK  avgt               8.115               #/op
  branch-misses             OBJECT_LOCK  avgt            3187.952               #/op
  branches                  OBJECT_LOCK  avgt          373101.145               #/op
  context-switches          OBJECT_LOCK  avgt              56.866               #/op
  cycles                    OBJECT_LOCK  avgt         3291424.505               #/op
  
  IPC                    REENTRANT_LOCK  avgt               0.593          insns/clk
  L1-dcache-load-misses  REENTRANT_LOCK  avgt           45007.877               #/op
  LLC-load-misses        REENTRANT_LOCK  avgt               8.138               #/op
  branch-misses          REENTRANT_LOCK  avgt            3328.792               #/op
  branches               REENTRANT_LOCK  avgt          388046.866               #/op
  context-switches       REENTRANT_LOCK  avgt              59.633               #/op
  cycles                 REENTRANT_LOCK  avgt         3462417.099               #/op
  
  IPC                           NO_LOCK  avgt               0.566          insns/clk
  L1-dcache-load-misses         NO_LOCK  avgt           42033.874               #/op
  LLC-load-misses               NO_LOCK  avgt               7.947               #/op
  branch-misses                 NO_LOCK  avgt            3027.985               #/op
  branches                      NO_LOCK  avgt          342940.528               #/op
  context-switches              NO_LOCK  avgt              54.597               #/op
  cycles                        NO_LOCK  avgt         3182397.387               #/op
```

```
  // Virtual thread  stats
  
  Perf Event                 (lockType)  Mode               Score              Units
  IPC                       OBJECT_LOCK  avgt               1.272          insns/clk
  L1-dcache-load-misses     OBJECT_LOCK  avgt          196249.216               #/op
  LLC-load-misses           OBJECT_LOCK  avgt             799.745               #/op
  branch-misses             OBJECT_LOCK  avgt           30627.527               #/op
  branches                  OBJECT_LOCK  avgt         3710927.299               #/op
  context-switches          OBJECT_LOCK  avgt               8.620               #/op
  cycles                    OBJECT_LOCK  avgt        17970218.767               #/op
  
  IPC                    REENTRANT_LOCK  avgt               1.254          insns/clk
  L1-dcache-load-misses  REENTRANT_LOCK  avgt          206329.513               #/op
  LLC-load-misses        REENTRANT_LOCK  avgt             804.014               #/op
  branch-misses          REENTRANT_LOCK  avgt           31657.944               #/op
  branches               REENTRANT_LOCK  avgt         3737761.434               #/op
  context-switches       REENTRANT_LOCK  avgt               8.665               #/op
  cycles                 REENTRANT_LOCK  avgt        18440844.889               #/op
  
  IPC                           NO_LOCK  avgt               1.284          insns/clk
  L1-dcache-load-misses         NO_LOCK  avgt          180438.009               #/op
  LLC-load-misses               NO_LOCK  avgt             762.020               #/op
  branch-misses                 NO_LOCK  avgt           29958.780               #/op
  branches                      NO_LOCK  avgt         3693926.389               #/op
  context-switches              NO_LOCK  avgt               8.596               #/op
  cycles                        NO_LOCK  avgt        17792312.604               #/op
```

#### Analysis of backoffType:PARK

In this scenario, virtual threads demonstrate lower execution times (i.e., better performance) compared to platform threads across the tested synchronization mechanisms.
Based on the reported performance event statistics, the major differences between virtual and platform threads can be summarized as follows:

- Virtual threads exhibit slightly higher instructions per cycle (`IPC`) than platform threads.
- Virtual threads tend to have typically lower `LLC-load-misses` compared to platform threads.
- `context-switches` occur more frequently in platform threads than in virtual threads.
- Platform threads consume more CPU `cycles` than virtual threads.

```
  // Platform thread stats
  
  Perf Event                 (lockType)  Mode               Score              Units
  IPC                       OBJECT_LOCK  avgt               0.687          insns/clk
  L1-dcache-load-misses     OBJECT_LOCK  avgt          640480.970               #/op
  LLC-load-misses           OBJECT_LOCK  avgt            4576.228               #/op
  branch-misses             OBJECT_LOCK  avgt          165016.601               #/op
  branches                  OBJECT_LOCK  avgt         7692129.353               #/op
  context-switches          OBJECT_LOCK  avgt            4614.475               #/op
  cycles                    OBJECT_LOCK  avgt        58254748.922               #/op
  
  IPC                    REENTRANT_LOCK  avgt               0.476          insns/clk
  L1-dcache-load-misses  REENTRANT_LOCK  avgt         1035894.902               #/op
  LLC-load-misses        REENTRANT_LOCK  avgt            1832.722               #/op
  branch-misses          REENTRANT_LOCK  avgt          241965.715               #/op
  branches               REENTRANT_LOCK  avgt        13410429.953               #/op
  context-switches       REENTRANT_LOCK  avgt            4597.790               #/op
  cycles                 REENTRANT_LOCK  avgt       134215963.863               #/op
  
  IPC                           NO_LOCK  avgt               0.767          insns/clk
  L1-dcache-load-misses         NO_LOCK  avgt          433751.100               #/op
  LLC-load-misses               NO_LOCK  avgt             674.073               #/op
  branch-misses                 NO_LOCK  avgt           90173.994               #/op
  branches                      NO_LOCK  avgt         4060838.177               #/op
  context-switches              NO_LOCK  avgt            2311.858               #/op
  cycles                        NO_LOCK  avgt        25152425.987               #/op
```

```
  // Virtual thread  stats
  
  Perf Event                 (lockType)  Mode               Score              Units
  IPC                       OBJECT_LOCK  avgt               0.946          insns/clk
  L1-dcache-load-misses     OBJECT_LOCK  avgt          449792.578               #/op
  LLC-load-misses           OBJECT_LOCK  avgt             940.029               #/op
  branch-misses             OBJECT_LOCK  avgt           86623.166               #/op
  branches                  OBJECT_LOCK  avgt         5401765.289               #/op
  context-switches          OBJECT_LOCK  avgt             309.747               #/op
  cycles                    OBJECT_LOCK  avgt        31854171.315               #/op
  
  IPC                    REENTRANT_LOCK  avgt               0.562          insns/clk
  L1-dcache-load-misses  REENTRANT_LOCK  avgt         2108434.887               #/op
  LLC-load-misses        REENTRANT_LOCK  avgt            2639.517               #/op
  branch-misses          REENTRANT_LOCK  avgt          447183.746               #/op
  branches               REENTRANT_LOCK  avgt        16424976.383               #/op
  context-switches       REENTRANT_LOCK  avgt            5217.440               #/op
  cycles                 REENTRANT_LOCK  avgt       158322287.830               #/op
  
  IPC                           NO_LOCK  avgt               0.983          insns/clk
  L1-dcache-load-misses         NO_LOCK  avgt          598629.320               #/op
  LLC-load-misses               NO_LOCK  avgt            1340.012               #/op
  branch-misses                 NO_LOCK  avgt          150567.950               #/op
  branches                      NO_LOCK  avgt         5867568.869               #/op
  context-switches              NO_LOCK  avgt             208.967               #/op
  cycles                        NO_LOCK  avgt        35865001.555               #/op
```

### Conclusions

This benchmark dispels the myth that replacing platform threads in the application with virtual threads will always increase performance. 
In general, virtual threads have fewer context switches and potentially higher IPC than platform threads, but the overall performance may also depend on various other factors. 

Therefore, the decision to simply switch from platform threads to virtual threads should be carefully considered since virtual threads have very specific use cases and are not always the best choice.

## API Geometric Mean

This section describes the normalized GM for the entire miscellaneous benchmarks category, having in total 725 benchmarks.
This is purely informative to have a high-level understanding of the overall benchmark scores.

The process of generating the normalized geometric mean is:
- All benchmark scores are converted to the same unit (e.g., "ns/op")
- The resulting geometric mean is normalized to OpenJDK

## x86_64

Rank | JVM distribution  | Arcitecture | Normalized Geometric Mean   | Nr. of Benchmarks | Unit
-----|-------------------|-------------|-----------------------------|-------------------|--------
1    | Oracle GraalVM    | x86_64      | 0.82                        | 725               | ns/op        
2    | OpenJDK           | x86_64      | 1                           | 725               | ns/op          
3    | GraalVM CE        | x86_64      | 1.02                        | 725               | ns/op           

_The first in the row is the fastest, and the last in the row is the slowest._

## arm64

Rank | JVM distribution  | Arcitecture | Normalized Geometric Mean | Nr. of Benchmarks | Unit
-----|-------------------|-------------|---------------------------|-------------------|--------
1    | Oracle GraalVM    | arm64       | 0.86                      | 725               | ns/op
2    | GraalVM CE        | arm64       | 0.99                      | 725               | ns/op
3    | OpenJDK           | arm64       | 1                         | 725               | ns/op

_The first in the row is the fastest, and the last in the row is the slowest._

To summarize, on both architectures based on the normalized geometric mean:

1. Oracle GraalVM is the fastest.
2. OpenJDK and GraalVM CE are very close and have interchangeable positions.

# Miscellaneous

This set of benchmarks covers a broader spectrum of classical programs using different techniques, various programming styles, and high-level Java APIs.

## Miscellaneous Benchmarks

The miscellaneous benchmarks are measured in [average time per operation](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/annotations/Mode.java#L52), which is the score reported by the JMH.

**Note:** Only a small subset of the miscellaneous benchmarks are included here; in general, we selected those with significant performance differences or representing various APIs. For the complete set, please refer to the repository and the generated plots.

## DijkstraShortestPathBenchmark

Dijkstra's algorithm is an algorithm for finding the shortest paths between a random source node and all other nodes in
a graph.
The benchmark uses two alternative approaches, each using different data structures to represent the graph, as follows:
1. an adjacency matrix
2. an adjacency list with a binary heap (min heap)

Adjacency Matrix: This implementation uses an adjacency matrix representation of the graph combined with a standard priority queue (binary heap).
The adjacency matrix represents the graph as a 2D array, where the value in the matrix indicates the weight of the edge between two nodes.
This approach is suitable for dense graphs but can be inefficient for sparse graphs due to its space usage.
The time complexity is O(V^2) due to the cost of accessing the matrix for each node during relaxation.

Adjacency List with Binary Heap (Min Heap): This implementation uses a standard binary heap (min heap) combined with an adjacency list representation of the graph.
The binary heap is implemented manually using a list of queues (buckets).
It can offer better performance than binary heaps for dense graphs with small and non-negative edge weights.
Its time complexity is O((V + E) log V).

**Note:** These implementations offer different trade-offs in terms of time complexity, space efficiency, and performance characteristics.

The best choice of implementation depends on the specific graph structure, the distribution of edge weights, etc.

Source code: [DijkstraShortestPathBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/dijkstrashortestpath/DijkstraShortestPathBenchmark.java)

[![DijkstraShortestPathBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DijkstraShortestPathBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/DijkstraShortestPathBenchmark.svg?raw=true)

## GameOfLifeBenchmark

Conway's Game of Life, is a cellular automaton devised by mathematician John Conway in 1970.
It is a mathematical "zero-player" game, meaning that its evolution is determined by its initial state, with no further input required.

The Game of Life is played on a 2D grid of cells, where each cell can be in one of two states: alive or dead (0 or 1).
The game progresses through generations, with the state of each cell in a generation being determined by the state of its neighboring cells
in the previous generation according to a set of rules. These rules are based on the concept of birth, death, and survival:
- **Birth:** A dead cell with exactly three live neighbors becomes a live.
- **Death:** A live cell with fewer than two live neighbors (underpopulation) or more than three live neighbors (overpopulation) becomes a dead cell.
- **Survival:** A live cell with two or three live neighbors remains alive.

Despite its simple rules, the Game of Life can produce complex and intricate patterns, including gliders (moving structures),
oscillators (repeating patterns), and even structures that can act as logic gates and memory cells.

The benchmark involves several alternative strategies:
- Game of Life with Functional Programming
- Game of Life with Imperative Style

Source code: [GameOfLifeBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/gameoflife/GameOfLifeBenchmark.java)

[![GameOfLifeBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/GameOfLifeBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/GameOfLifeBenchmark.svg?raw=true)

## HolidayPlannerBenchmark

This benchmark simulates a holiday planning system that utilizes the `structured concurrency API` to collect necessary 
information from multiple sources for trip planning. These sources include quotations, tourist attractions, and weather data. 
Each of these sources divides the work into sub-tasks, processes them in parallel, and returns their results, which are subsequently
aggregated to form the final response.
The implementation compares the performance of using virtual threads with platform threads. 

The total number of tasks to be executed by either a virtual or a platform thread is proportional to the number of available
CPUs multiplied by a factor of `256` (i.e., which makes `256 x 6 = 1,536` on the particular `x86_64` target machine the benchmark was run on).

Source code: [HolidayPlannerBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/holidayplanner/HolidayPlannerBenchmark.java)

[![HolidayPlannerBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/HolidayPlannerBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/HolidayPlannerBenchmark.svg?raw=true)

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

Source code: [HuffmanCodingBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/huffmancoding/HuffmanCodingBenchmark.java)

[![HuffmanCodingBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/HuffmanCodingBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/HuffmanCodingBenchmark.svg?raw=true)

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

Source code: [KnapsackBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/knapsack/KnapsackBenchmark.java)

[![KnapsackBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/GameOfLifeBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/KnapsackBenchmark.svg?raw=true)

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

Source code: [PalindromeBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/PalindromeBenchmark.java)

[![PalindromeBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/PalindromeBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/PalindromeBenchmark.svg?raw=true)

## PopulationVarianceBenchmark

This benchmark generates a population of different ages and then calculates the age variation.
Population variance is the average of the distances from each data point in a particular population
to the mean squared. It indicates how data points spread out in the population.
Population variance is an important measure of dispersion used in statistics.

Source code: [PopulationVarianceBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/populationvariance/PopulationVarianceBenchmark.java)

[![PopulationVarianceBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/PopulationVarianceBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/PopulationVarianceBenchmark.svg?raw=true)

## PrimesBenchmark

Calculates the count of prime numbers up to a specified threshold (e.g., N).
The benchmark employs several alternative methods:
- Sieve of Eratosthenes
- Trial division (i.e., checking if a number is prime by dividing it by all possible divisors up to the square root of the number.)
- Miller-Rabin primality test

The resulting count of prime numbers is compared against the Prime Number Theorem to ensure the accuracy of the computation.

Source code: [PrimesBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/prime/PrimesBenchmark.java)

[![PrimesBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/PrimesBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/PrimesBenchmark.svg?raw=true)

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

Source code: [PublicationStatisticsBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatisticsBenchmark.java)

[![PublicationStatisticsBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/PublicationStatisticsBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/PublicationStatisticsBenchmark.svg?raw=true)

## WordFrequencyBenchmark

Computes the word frequencies/occurrences from a text file.
The benchmark uses a few alternative approaches:
- iterative
- parallel streams
- pattern streams

Source code: [WordFrequencyBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/wordfrequency/WordFrequencyBenchmark.java)

[![WordFrequencyBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/WordFrequencyBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/v3.0/results/jdk-21/x86_64/plot/WordFrequencyBenchmark.svg?raw=true)

## Miscellaneous Geometric Mean

This section describes the normalized GM for the entire miscellaneous benchmarks category, having in total 82 benchmarks.
This is purely informative to have a high-level understanding of the overall benchmark scores.

The process of generating the normalized geometric mean is:
- All benchmark scores are converted to the same unit (e.g., "ns/op")
- The resulting geometric mean is normalized to OpenJDK

## x86_64

Rank | JVM distribution  | Arcitecture | Normalized Geometric Mean | Nr. of Benchmarks | Unit
-----|-------------------|-------------|---------------------------|-------------------|--------
1    | Oracle GraalVM    | x86_64      | 0.87                      | 82                | ns/op
2    | OpenJDK           | x86_64      | 1                         | 82                | ns/op
3    | GraalVM CE        | x86_64      | 1.09                      | 82                | ns/op

_The first in the row is the fastest, and the last in the row is the slowest._

## arm64

Rank | JVM distribution  | Arcitecture | Normalized Geometric Mean | Nr. of Benchmarks | Unit
-----|-------------------|-------------|---------------------------|-------------------|--------
1    | Oracle GraalVM    | arm64       | 0.91                      | 82                | ns/op
2    | OpenJDK           | arm64       | 1                         | 82                | ns/op
3    | GraalVM CE        | arm64       | 1.13                      | 82                | ns/op

_The first in the row is the fastest, and the last in the row is the slowest._

To summarize, on both architectures the normalized geometric mean is consistent:

1. Oracle GraalVM is the fastest.
2. OpenJDK is in the middle.
3. GraalVM CE is the slowest.

## Overall Geometric Mean

This section describes the normalized GM for all categories, having in total 1112 benchmarks.
This is purely informative to have a high-level understanding of the overall benchmark scores.

The process of generating the normalized geometric mean is:
- All benchmark scores are converted to the same unit (e.g., "ns/op")
- The resulting geometric mean is normalized to OpenJDK

## x86_64

Rank | JVM distribution  | Arcitecture | Normalized Geometric Mean | Nr. of Benchmarks | Unit
-----|-------------------|-------------|---------------------------|-------------------|--------
1    | Oracle GraalVM    | x86_64      | 0.77                      | 1112              | ns/op
2    | OpenJDK           | x86_64      | 1                         | 1112              | ns/op
3    | GraalVM CE        | x86_64      | 1.03                      | 1112              | ns/op

_The first in the row is the fastest, and the last in the row is the slowest._

## arm64

Rank | JVM distribution  | Arcitecture | Normalized Geometric Mean | Nr. of Benchmarks | Unit
-----|-------------------|-------------|---------------------------|-------------------|--------
1    | Oracle GraalVM    | arm64       | 0.83                      | 1112              | ns/op
2    | OpenJDK           | arm64       | 1                         | 1112              | ns/op
3    | GraalVM CE        | arm64       | 1.08                      | 1112              | ns/op

_The first in the row is the fastest, and the last in the row is the slowest._

To summarize, on both architectures the normalized geometric mean is consistent:

1. Oracle GraalVM is the fastest.
2. OpenJDK is in the middle.
3. GraalVM CE is slightly slower than OpenJDK.

# Overall Conclusions

In this article, we compared three different JVM distributions (OpenJDK, Oracle GraalVM, and GraalVM CE) on both `x86_64` and `arm64` architectures. 
We used a set of JMH benchmarks to evaluate the performance of the JIT compilers, considering a non-exhaustive set of optimizations.

Based on the normalized overall geometric mean, the Oracle GraalVM JIT compiler is the fastest, followed by the C2 JIT compiler, and then the GraalVM CE JIT compiler.

The Oracle GraalVM JIT compiler obtains a geometric mean performance improvement of approximately `23%` on `x86_64` and `17%` on `arm64` compared to the C2 JIT compiler. 
Optimizations such as improved partial escape analysis, more aggressive inlining (including polymorphic inlining, 
recursive method inlining, constructor inlining, etc.), compact TLAB allocation code for grouped allocations, extended vectorization support, 
and (in general) cleaner and more compact CPU assembly instructions make a significant difference.

The C2 JIT and GraalVM CE JIT score closely overall, but there are fundamental differences between these two compilers.

The C2 JIT compiler, in contrast to GraalVM CE JIT, offers a broader set of intrinsics and vectorization support, 
along with a better mechanism for handling exceptions when the same exception is thrown multiple times in the hot path. 
However, C2 JIT exhibits limited inlining heuristics, constrained devirtualization of megamorphic calls 
(i.e., when the number of targets is higher than two), and, in some very specific cases, it can fail to compile resulting
in execution of C1 compiled-code or even the Interpreter.

On the other hand, GraalVM CE JIT, compared to C2 JIT, demonstrates superior partial escape analysis and inlining heuristics. 
Nevertheless, it has a limited set of intrinsics and vectorization support, along with poor loop optimizations.

# Final Thoughts

This report should not be considered as a final verdict on which JVM distribution is the best. 
Our goal is to offer an accurate and transparent analysis based on our knowledge, avoiding bias toward any specific JVM. 
We do not aim to promote or favor any JVM over another, and we are not responsible for influencing marketing or community adoption.

Additionally, micro-benchmarking is often not the best indicator of how good a system will be in a production environment.
Instead, it is a starting point for further investigation and could be used as a reference for future benchmarks.
It might also be useful to software engineers who want to have a better understanding of the class of optimizations available in a given JVM distribution.

> Join us in making a difference! Our free-time, and non-profit project welcomes and values any form of involvement. Contact us directly or open a pull request on [GitHub](https://github.com/ionutbalosin/jvm-performance-benchmarks) to contribute to the Java community.

# Acknowledgements

We are very thankful to the members of the Oracle GraalVM team for their review and helpful suggestions.

# References
- [OpenJDK](https://github.com/openjdk/jdk) sources
- [GraalVM](https://github.com/oracle/graal) sources
- [JMH](https://github.com/openjdk/jmh) sources
- [Aleksey Shipilëv: One Stop Page](https://shipilev.net)
- [async-profiler](https://github.com/async-profiler/async-profiler)
- [How to not lie with statistics: the correct way to summarize benchmark results](https://dl.acm.org/doi/pdf/10.1145/5666.5673) - Philip J Fleming, John J Wallace