# JVM Performance Comparison for JDK 21

## Authors

Ionut Balosin
- Website: www.ionutbalosin.com
- X: @ionutbalosin
- Mastodon: ionutbalosin@mastodon.social

Florin Blanaru
- X: @gigiblender
- Mastodon: gigiblender@mastodon.online

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
- [Final Thoughts](#final-thoughts)
- [References](#references)

# Context

The current article describes a series of Java Virtual Machine (JVM) benchmarks with a primary focus on top-tier Just-In-Time (JIT) Compilers, such as C2 JIT, and Graal JIT.  The benchmarks are structured in three distinct categories:
1. **JIT Compiler**: This category is dedicated to assessing JIT compiler optimizations by following specific handwritten code patterns. It assesses common optimizations found in compilers, including inlining, loop unrolling, escape analysis, devirtualization, null-check elimination, range-check elimination, dead code elimination, etc.
2. **Api**: This category includes benchmarks targeting common APIs from both the Java Platform, Standard Edition (Java SE) (e.g., `java.io`, `java.nio`, `java.net`, `java.security`, `java.util`, `java.text`, `java.time`, etc.) and the Java Development Kit (JDK) (e.g., `jdk.incubator.vector`, etc.).
3. **Miscellaneous**: This category covers a broader spectrum of classical programs (e.g., Dijkstra's shortest path, factorial, Fibonacci, Game of Life, image rotation, knapsack problem, N queens, palindrome, Huffman coding/encoding, Lempel-Ziv-Welch compression, etc.) using different techniques (e.g., dynamic programming, greedy algorithms, backtracking, divide and conquer, etc.), various programming styles (e.g., iterative, functional), and high-level Java APIs (e.g., streams, lambdas, fork-join, collections, etc.).

For some of the benchmarks (i.e., where there are notable differences) we provide an in-depth analysis (i.e., optimized generated assembly code, flame graphs, etc.).

The list of included JIT compilers is:
- C2 (Server) JIT
- Graal JIT

The list of included JMVs is:
- OpenJDK 21
- GraalVM Community Edition (CE) 21+35.1
- Oracle GraalVM Edition 21+35.1

The list of included architectures is:
- x86_64
- arm64

This article is based on the [jvm-performance-benchmarks](https://github.com/ionutbalosin/jvm-performance-benchmarks) project. For any further information (not explicitly mentioned here) including the OS tuning settings, the deliberate decision on choosing these JVMs and/or specific JDKs, etc., please check out the repository.

> The reference architecture (and, subsequently, the benchmarks analysis) for this article is x86_64, and arm64 is only included in the geometric mean score section for comparison.

# SetUp

- Java Development Kit (JDK) 21
- Java Microbenchmark Harness (JMH) v1.37
- each benchmark uses 5x10s warm-up iterations, 5x10s measurement iterations, and 5 JVM forks, both single-threaded but also multi-threaded workloads (depending on the test case)
- the benchmarks were run on the below machines:
  1. Apple MacBook Pro, M1 Chip 10-Core, 16-Core Neural Engine, 32GB RAM, macOS Ventura 13.6.1
  2. Dell XPS 15 7590, Intel Core i7-9750H 6-Core, 32GB RAM, Ubuntu 20.04 LTS
- to eliminate potential sources of performance non-determinism, the below OS tunings were performed on the Intel machine:
  1. disabled the turbo-boost mode
  2. set CPU governor to _performance_
  3. disabled CPU hyper-threading

# JIT Compiler

This section describes the results obtained from running the JIT benchmarks. The current benchmarks focus on various optimizations that are generally available in compilers, such as inlining, loop unrolling, escape analysis, devirtualization, null-check, and range-check elimination, dead code elimination, etc.

The list of JIT compilers (including the JVM and the architecture) is:

JIT       | JVM                    | Arcitecture 
----------|------------------------|----------------
C2 JIT    | OpenJDK 21             | x86_64, arm64         
Graal JIT | GraalVM CE 21+35.1     | x86_64, arm64      
Graal JIT | Oracle GraalVM 21+35.1 | x86_64, arm64      

## JIT Benchmarks

The JIT benchmarks are measured in [average time per operation](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/annotations/Mode.java#L52), which is the score reported by the JMH.

## InfrastructureBaselineBenchmark

This benchmark is used as a baseline (i.e., a preliminary check) to assess the infrastructure overhead for the code to measure.
Since no magical infrastructures are incurring no overhead, it is essential to know what default overheads might occur in our setup.

It measures the calls performance of empty methods (w/ and w/o explicit inlining) but also the performance of returning an object versus consuming it via black holes. All of these mechanisms are used by the benchmark suite.

This is particularly useful in case of a comparison between different types of JVMs, and it should be run before any other real benchmark to check the default costs.

> A comparison between different JVMs might not be further relevant unless, at least, the baseline is the same.

Source code: [InfrastructureBaselineBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark.java)

[![InfrastructureBaselineBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/InfrastructureBaselineBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/InfrastructureBaselineBenchmark.svg?raw=true)

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

Source code: [DeadMethodCallStoreBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadMethodCallStoreBenchmark.java)

[![DeadMethodCallStoreBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/DeadMethodCallStoreBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/DeadMethodCallStoreBenchmark.svg?raw=true)

### Analysis

The analysis below pertains to the `method_call_dse` method, which is the primary focus of the benchmark.

#### C2 JIT Compiler

The C2 JIT compiler optimizes the code by eliminating dead store method calls and applying inlining to the `computePi` method. Inside the loop, there's a boolean flag determining whether to add or subtract the value `4.0 / i` to the result. However, the compiler optimizes this logic, removing the conditional statements.

Additionally, it unrolls the main loop by a factor of 16, thereby handling 16 operations per unrolled loop cycle. To compute the results, the compiler leverages double-precision scalar floating-point instructions with SIMD capabilities, utilizing SSE/AVX extensions.

```
  // Main loop (from 0x5 ... to 0x3e2)
  
  0x7f044c636b7a:   mov    $0x5,%r9d                         ; r9d = 5 (loop counter)
                                                             ; <--- loop begin
  0x7f044c636ba0:   vaddsd %xmm1,%xmm0,%xmm0                 ; xmm0 = xmm0 + xmm1
  0x7f044c636ba4:   mov    %r10d,%r9d                        ; r9d = r10d 
  0x7f044c636ba7:   lea    0x1e(%r9),%r11d                   ; r11d = r9 + 0x1e (i.e., offset 30)
  0x7f044c636bab:   lea    0x1a(%r9),%r8d                    ; r8d = r9 + 0x1a (i.e., offset 26)
  0x7f044c636baf:   vcvtsi2sd %r11d,%xmm1,%xmm1              ; convert r11d to double and store in xmm1
  0x7f044c636bb4:   vdivsd %xmm1,%xmm2,%xmm3                 ; xmm3 = xmm2 / xmm1
                                                             ; xmm2 stores the 4.0 value
  0x7f044c636bb8:   vcvtsi2sd %r8d,%xmm1,%xmm1               ; convert r8d to double and store in xmm1
  0x7f044c636bbd:   vdivsd %xmm1,%xmm2,%xmm4                 ; xmm4 = xmm2 / xmm1
  ...
  <--- similar for offsets 0x1c, 0x18, 0x10, 0x8 -->
  <--- store results in xmm5, xmm6, xmm7, xmm8 -->
  ...
  0x7f044c636bf5:   lea    0x2(%r9),%r11d // 2               ; set r11d = r9 + 0x2 (i.e., offset 2)
  0x7f044c636bf9:   lea    0x4(%r9),%r8d  // 4               ; set r8d = r9 + 0x4 (i.e., offset 4)
  0x7f044c636bfd:   vcvtsi2sd %r11d,%xmm1,%xmm1              ; convert r11d to double and store in xmm1
  0x7f044c636c02:   vdivsd %xmm1,%xmm2,%xmm1                 ; xmm1 = xmm2 / xmm1
  0x7f044c636c06:   vsubsd %xmm1,%xmm0,%xmm0                 ; xmm0 = xmm0 - xmm1
  0x7f044c636c0a:   vcvtsi2sd %r8d,%xmm1,%xmm1               ; convert r8d to double and store in xmm1
  0x7f044c636c0f:   vdivsd %xmm1,%xmm2,%xmm1                 ; xmm1 = xmm2 / xmm1
  0x7f044c636c13:   vaddsd %xmm1,%xmm0,%xmm0                 ; xmm0 = xmm0 + xmm1
  ...
  <--- similar for offsets 0x6, 0xa, 0xc, 0xe, 0x12, 0x14, 0x16, 0x20 -->
  <--- the results are alternatively stored in xmm0, xmm1 -->
  ...
  0x7f044c636ca6:   lea    0x20(%r9),%r10d                   ; set r10d = r9 + 0x20 (i.e., offset 32)
  0x7f044c636caa:   vcvtsi2sd %r10d,%xmm1,%xmm1              ; convert r10d to double and store in xmm1
  0x7f044c636caf:   vdivsd %xmm1,%xmm2,%xmm1                 ; xmm1 = xmm2 / xmm1
  0x7f044c636cc0:   cmp    $0x3e2,%r10d                      ; compare against 994
  0x7f044c636cc7:   jl     0x7f044c636ba0                    ; <--- loop end (loop back if less)
  ; xmm1 stores the result of the main loop
```

The post-loop processes the remaining elements individually, without unrolling:

```
  // Post loop (0x3e2 ... 0x3e8)
  
  0x7f044c636ccd:   add    $0x20,%r9d            ; r9d = r9d + 0x20 (loop counter)
  0x7f044c636cd1:   mov    $0x1,%r10d            ; r10d = 1
                                                 ; <--- loop begin
  0x7f044c636cd7:   test   %r10d,%r10d           ; check if r10d is zero
  0x7f044c636cda:   je     0x7f044c636ce2        ; jump if r10d == 0
  0x7f044c636cdc:   vaddsd %xmm1,%xmm0,%xmm0     ; xmm0 = xmm0 + xmm1
  0x7f044c636ce0:   jmp    0x7f044c636ce6
  0x7f044c636ce2:   vsubsd %xmm1,%xmm0,%xmm0     ; xmm0 = xmm0 - xmm1
  0x7f044c636ce6:   add    $0x2,%r9d             ; r9d = r9d + 2 (increment by loop stride)
  0x7f044c636cea:   cmp    $0x3e8,%r9d           ; compare against 1000
  0x7f044c636cf1:   jge    0x7f044c636d02        ; exit loop if greater or equal
  0x7f044c636cf3:   vcvtsi2sd %r9d,%xmm1,%xmm1   ; convert r9d to double and store in xmm1
  0x7f044c636cf8:   vdivsd %xmm1,%xmm2,%xmm1     ; xmm1 = xmm2 / xmm1
  0x7f044c636cfc:   xor    $0x1,%r10d            ; r10d = r10d XOR 1 (i.e., toggle r10d between 0 and 1)
  0x7f044c636d00:   jmp    0x7f044c636cd7        ; <--- loop end (jump loop back)
  ; xmm1 stores the result of the post loop
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM compiler optimizes code by eliminating redundant method calls and applying inlining to the `computePi` method, much like the C2 JIT.

It achieves optimization by unrolling the main loop by a factor of 8, allowing 8 operations to be handled per unrolled loop cycle using double-precision scalar floating-point instructions.

```
  // Main loop (0x5 ... 0x3d8)
  
  0x7f0ac2d7d86a:   mov    $0x5,%r10d                   ; r10d = 5 (loop counter)
                                                        ; <--- loop begin
  0x7f0ac2d7d880:   lea    0x10(%r10),%r11d             ; r11d = r10 + 0x10 (i.e., offset 16)
  0x7f0ac2d7d884:   vxorpd %xmm2,%xmm2,%xmm2            ; zero out xmm2
  0x7f0ac2d7d888:   vcvtsi2sd %r10d,%xmm2,%xmm2         ; convert r10d to double and store in xmm2
  0x7f0ac2d7d88d:   vdivsd %xmm2,%xmm0,%xmm2            ; xmm2 = xmm0 / xmm2
  0x7f0ac2d7d891:   vaddsd %xmm2,%xmm1,%xmm1            ; xmm1 = xmm1 + xmm2
  
  0x7f0ac2d7d895:   lea    0x2(%r10),%r8d               ; r8d = r10 + 0x2 (i.e., offset 2)
  0x7f0ac2d7d899:   vxorpd %xmm2,%xmm2,%xmm2            ; zero out xmm2
  0x7f0ac2d7d89d:   vcvtsi2sd %r8d,%xmm2,%xmm2          ; convert r8d to double and store in xmm2
  0x7f0ac2d7d8a2:   vdivsd %xmm2,%xmm0,%xmm2            ; xmm2 = xmm0 / xmm2
  0x7f0ac2d7d8a6:   vsubsd %xmm2,%xmm1,%xmm1            ; xmm1 = xmm1 - xmm2
  ...
  <--- similar for offsets 0x4, 0x6, 0x8, 0xa, 0xc, 0xe -->
  <--- the results are alternatively stored in xmm0, xmm1 -->
  ...
  0x7f0ac2d7d928:   mov    %r11d,%r10d                  ; r10d = r11d 
  0x7f0ac2d7d92b:   cmp    $0x3d8,%r10d                 ; compare against 984 
  0x7f0ac2d7d932:   jb     0x7f0ac2d7d880               ; <--- loop end (loop back if below)
  ; xmm1 stores the result of the main loop
```

The post-loop processes the remaining elements individually, without unrolling:

```
  // Post loop (0x3d8 ... 0x3e8)

  0x7f0ac2d7d938:   mov    %r10d,%r11d            ; r11 = r10 (loop counter)
  0x7f0ac2d7d93b:   mov    $0x1,%r10d             ; r10d = 0x1
                                                  ; <--- loop begin
  0x7f0ac2d7d950:   cmp    $0x3e8,%r11d           ; compare against 1000
  0x7f0ac2d7d957:   jae    0x7f0ac2d7d996         ; exit loop if greater or equal
  0x7f0ac2d7d95d:   lea    0x2(%r11),%r8d         ; r8d = r11 + 2 (increment by loop stride)
  0x7f0ac2d7d961:   mov    %r10d,%r9d             ; r9d = r10d
  0x7f0ac2d7d964:   xor    $0x1,%r9d              ; toggle the least significant bit of r9d (i.e., r10d)
  0x7f0ac2d7d968:   vxorpd %xmm2,%xmm2,%xmm2      ; zero out xmm2
  0x7f0ac2d7d96c:   vcvtsi2sd %r11d,%xmm2,%xmm2   ; convert r11d to double and store in xmm2
  0x7f0ac2d7d971:   vdivsd %xmm2,%xmm0,%xmm2      ; xmm2 = xmm0 / xmm2
  0x7f0ac2d7d975:   test   %r10d,%r10d            ; check r10d is zero
  0x7f0ac2d7d978:   jne    0x7f0ac2d7d98a         ; jump if r10d != 0 (for subtraction)
  0x7f0ac2d7d97e:   vsubsd %xmm2,%xmm1,%xmm1      ; xmm1 = xmm1 - xmm2
  0x7f0ac2d7d982:   mov    %r8d,%r11d             ; r11d = r8d
  0x7f0ac2d7d985:   mov    %r9d,%r10d             ; r10d = r9d
  0x7f0ac2d7d988:   jmp    0x7f0ac2d7d950         ; <--- loop end (subtract loop)
  0x7f0ac2d7d98a:   vaddsd %xmm2,%xmm1,%xmm1      ; xmm1 = xmm1 + xmm2
  0x7f0ac2d7d98e:   mov    %r8d,%r11d             ; r11d = r8d
  0x7f0ac2d7d991:   mov    %r9d,%r10d             ; r10d = r9d
  0x7f0ac2d7d994:   jmp    0x7f0ac2d7d950         ; <--- loop end (addition loop)
  ; xmm1 stores the result of the post loop
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT Compiler cannot completely remove the loops associated with the dead store method calls; hence, they persist as dead loops.

```
  Dead loop (appears four times; i.e., equivalent to the number of dead method calls)

  0x7f94ab23c48d:   mov    $0x5,%r10d                ; r10 = 5  (loop counter)
                                                     ; <--- loop begin
  0x7f94ab23c4a0:   lea    0x2(%r10),%r10d           ; r10d = r10 + 2 (increment by loop stride)
  0x7f94ab23c4a4:   cmp    $0x3e8,%r10d              ; compare against 1000
  0x7f94ab23c4ab:   jl     0x7f94ab23c4a0            ; <--- loop end (loop back if less than 1000)
```

Subsequently, the loop corresponding to the non-dead store method call is not unrolled.

```
  0x7f94ab23c4fd:   mov    $0x1,%r11d               ; r11 = 1
  0x7f94ab23c503:   mov    $0x5,%r10d               ; r10 = 5  (loop counter)
                                                    ; <--- loop begin
  0x7f94ab23c510:   cmp    $0x3e8,%r10d             ; compare against 1000
  0x7f94ab23c517:   jge    0x7f94ab23c54c           ; exit loop if greater or equal
  0x7f94ab23c51d:   vcvtsi2sd %r10d,%xmm2,%xmm2     ; convert r10d to double and store in xmm2
  0x7f94ab23c522:   vdivsd %xmm2,%xmm0,%xmm2        ; xmm2 = xmm0 / xmm2
  0x7f94ab23c526:   mov    %r11d,%r8d               ; r8 = r11
  0x7f94ab23c529:   xor    $0x1,%r8d                ; r8 = r8 XOR 1 (toggle the least significant bit of r8)
  0x7f94ab23c52d:   lea    0x2(%r10),%r10d          ; r10d = r10 + 2 (increment by loop stride)
  0x7f94ab23c531:   test   %r11d,%r11d              ; check r11d is zero
  0x7f94ab23c534:   jne    0x7f94ab23c543           ; jump if r11d != 0 (for subtraction)
  0x7f94ab23c53a:   vsubsd %xmm2,%xmm1,%xmm1        ; xmm1 = xmm1 - xmm2
  0x7f94ab23c53e:   mov    %r8d,%r11d
  0x7f94ab23c541:   jmp    0x7f94ab23c510           ; <--- loop end (subtract loop)
  0x7f94ab23c543:   vaddsd %xmm1,%xmm2,%xmm1        ; xmm1 = xmm1 + xmm2
  0x7f94ab23c547:   mov    %r8d,%r11d
  0x7f94ab23c54a:   jmp    0x7f94ab23c510           ; <--- loop end (addition loop)
  ; xmm1 stores the result of the loop
```

### Conclusions

- The GraalVM CE JIT exibits suboptimal optimizations in this scenario, lacking loop unrolling and unable to eliminate loops related to dead method calls.
- Oracle GraalVM JIT successfully eliminates the dead method calls and triggers loop unrolling by a factor of 8, handling the remaining elements in a post loop without unrolling.
- C2 JIT also eliminates dead method calls, performing loop unrolling by a factor of 16 for the main loop and handling the remaining elements in a post loop without unrolling.

Despite employing a more aggressive unrolling approach, C2 JIT does not necessarily outperform Oracle GraalVM JIT. Even though both JITs rely on double-precision scalar floating-point instructions with SIMD capabilities via SSE/AVX extensions, Oracle GraalVM JIT may issue more optimized instructions for the hardware used. However, a thorough examination involving advanced profiling and detailed code analysis could provide a better understanding of these differences.

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

Source code: [EnumValuesLookupBenchmark.java](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/api/EnumValuesLookupBenchmark.java)

[![EnumValuesLookupBenchmark.svg](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/EnumValuesLookupBenchmark.svg?raw=true)](https://github.com/ionutbalosin/jvm-performance-benchmarks/blob/main/results/jdk-21/x86_64/plot/EnumValuesLookupBenchmark.svg?raw=true)

### Analysis of cached_enum_values

The analysis below pertains to the `cached_enum_values` method, which is the primary focus of the benchmark.

#### C2 JIT Compiler

The C2 JIT Compiler iterates through the array of cached enum values, attempting to locate a match for the `lookUpValue` by utilizing the `String::equals` method.

```
  0x7f2fe44fa213:   mov    $0x2,%r10d                   ; Initialize loop counter r10d = 2
  0x7f2fe44fa219:   jmp    0x7f2fe44fa22d
                                                        ; <--- loop begin
  0x7f2fe44fa220:   inc    %r10d                        ; increment loop counter
  0x7f2fe44fa223:   cmp    $0x29,%r10d                  ; compare against 41 (enum values array length)
  0x7f2fe44fa227:   jge    0x7f2fe44fa388               ; jump if greater than or equal to exit loop
  0x7f2fe44fa22d:   mov    0x10(%rdx,%r10,4),%ebx       ; load Car object from enum values array at index [rdx + r10 * 4 + 16]
  0x7f2fe44fa232:   mov    0x18(%r12,%rbx,8),%edi       ; load 'carValue' field from the Car object at offset 0x18
  ...
  <--- Trigges the comparison between 'carValue' and 'lookUpValue' value -->
  ...
  0x7f2fe44fa269:   jne    0x7f2fe44fa220               ; <--- loop end (loop back if not equal)
                                                        ; - java.lang.String::equals
```

#### Oracle GraalVM JIT Compiler

The Oracle GraalVM JIT iterates through the array of cached enum values. However, when attempting to find a match for the `lookUpValue` within the enum values (i.e., the String comparison), it utilizes an intrinsic candidate.

```
                                                            ; <--- loop begin
  0x00007f9bb6d9c2e0:   cmp    $0x29,%r10d                  ; compare against 41 (enum values array length)
  0x00007f9bb6d9c2e4:   jae    0x00007f9bb6d9c42c           ; jump if greater than or equal to 41 (exit the loop)
  0x00007f9bb6d9c2ea:   mov    0x10(%rbx,%r10,4),%edi       ; load Car object from enum values array at index [rbx + r10 * 4 + 0x10]
  0x00007f9bb6d9c2ef:   mov    0x18(,%rdi,8),%esi           ; load 'carValue' field from the Car object at offset 0x18
  ...
  0x00007f9bb6d9c312:   inc    %eax
  ...
  <--- Trigger the comparison of two byte array regions using an intrinsic stub -->
  0x00007f9bb6d9c359:   call   0x00007f9bb6910580           ; call the runtime function for array region comparison
                                                            ; {runtime_call Stub&lt;IntrinsicStubsGen.arrayRegionEqualsS1S1&gt;}
  0x00007f9bb6d9c360:   test   %eax,%eax                    ; test the result of the array region comparison
  0x00007f9bb6d9c362:   jne    0x00007f9bb6d9c385           ; jump if ZF is not set (i.e., arrays are equal)
  ...
  0x00007f9bb6d9c37d:   mov    %eax,%r10d                   ; r10d = eax
  0x00007f9bb6d9c380:   jmp    0x00007f9bb6d9c2e0           ; <--- loop end (loop back if arrays are not equal)
```

#### GraalVM CE JIT Compiler

The GraalVM CE JIT Compiler employs a similar approach to the Oracle GraalVM JIT Compiler for comparing Strings (using the intrinsic stub). However, the generated assembly appears larger and less structured. The `perfasm` profiler we used to capture this information displays only a part of the assembly code. Consequently, we are unable to offer additional insights; further profiling might be necessary.

### Analysis of enum_values

Regarding the other `enum_values` benchmark, it is impacted by the object allocations triggered by the `Enum::values()` call that is an invoke virtual the to clone() method.

The following snapshot is from the C2 JIT Compiler output, although the same pattern occurs for the Oracle GraalVM JIT Compiler and GraalVM CE JIT Compiler.

```
                                                         ; <--- (TLAB) Allocation (and partially initialization)
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
  0x07f77984f8df8:   movabs $0x62ae275c0,%r10            ; set enum values to the new memory address
                                                         ; {oop(a &apos;EnumValuesLookupBenchmark$Car&apos;[41] {0x000062ae275c0})}
  0x07f77984f8e02:   movabs $0x62ae275c0,%rbx            ; set enum values to the new memory address
                                                         ; {oop(a &apos;EnumValuesLookupBenchmark$Car&apos;[41] {0x000062ae275c0})}
  0x07f77984f8e0c:   add    $0x10,%rbx
  0x07f77984f8e10:   mov    %rbx,%rdi
  0x07f77984f8e16:   movabs $0x7f7797f6a400,%r10
  0x07f77984f8e20:   call   *%r10                        ; function call to handle enum values
  0x07f77984f8e2b:   mov    (%rbx),%r11d                 ;*invokevirtual clone
                                                         ; - EnumValuesLookupBenchmark$Car::values
```

The hottest regions in the report emphasize array allocation via `StubRoutines::jlong_disjoint_arraycopy`.

```
  ....[Hottest Regions]...............................................................................
  62.25%           c2, level 4  EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
  13.47%           c2, level 4  EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
  9.31%          runtime stub  StubRoutines::jlong_disjoint_arraycopy
  3.94%           c2, level 4  EnumValuesLookupBenchmark::enum_values, version 2, compile id 643
```

### Conclusions

- Try to avoid calling `Enum::values()`, especially within a loop, as it allocates a new array and assigns references to the enum values as elements. This can potentially generate a considerable amount of garbage.
- When matching enum values to a String, which involves String comparisons, the Oracle GraalVM JIT generally outperforms the C2 JIT Compiler. This is not only because it uses an intrinsic for array regions comparison (unlike the C2 JIT Compiler) but also due to more structured code compared to the GraalVM CE JIT Compiler.

## IfConditionalBranchBenchmark
### Analysis
#### C2 JIT Compiler
#### Oracle GraalVM JIT Compiler
#### GraalVM CE JIT Compiler
### Conclusions

## LockCoarseningBenchmark
### Analysis
#### C2 JIT Compiler
#### Oracle GraalVM JIT Compiler
#### GraalVM CE JIT Compiler
### Conclusions

## LockElisionBenchmark
### Analysis
#### C2 JIT Compiler
#### Oracle GraalVM JIT Compiler
#### GraalVM CE JIT Compiler
### Conclusions

## LoopFusionBenchmark
### Analysis
#### C2 JIT Compiler
#### Oracle GraalVM JIT Compiler
#### GraalVM CE JIT Compiler
### Conclusions

## LoopInvariantCodeMotionBenchmark
### Analysis
#### C2 JIT Compiler
#### Oracle GraalVM JIT Compiler
#### GraalVM CE JIT Compiler
### Conclusions

## LoopReductionBenchmark
### Analysis
#### C2 JIT Compiler
#### Oracle GraalVM JIT Compiler
#### GraalVM CE JIT Compiler
### Conclusions

## RecursiveMethodCallBenchmark
### Analysis
#### C2 JIT Compiler
#### Oracle GraalVM JIT Compiler
#### GraalVM CE JIT Compiler
### Conclusions

## ScalarReplacementBenchmark
### Analysis
#### C2 JIT Compiler
#### Oracle GraalVM JIT Compiler
#### GraalVM CE JIT Compiler
### Conclusions

## TypeCheckBenchmark
### Analysis
#### C2 JIT Compiler
#### Oracle GraalVM JIT Compiler
#### GraalVM CE JIT Compiler
### Conclusions

The results are identical. This increases the confidence in the benchmark results, across the selected JVMs.

## JIT Geometric Mean

This section describes the normalized GM for the entire JIT-related benchmark category, having in total 301 benchmarks.
This is purely informative to have a high-level understanding of the overall benchmark scores.

The process of generating the normalized geometric mean is:
- all benchmark scores are converted to the same unit (e.g., "ns/op")
- the resulting geometric mean is normalized to C2 JIT

## x86_64

No. | JIT            | Arcitecture | Normalized Geometric Mean | Nr.of.Benchmarks | Unit
----|----------------|-------------|---------------------------|------------------|--------
1   | GraalVM EE JIT | x86_64      | 0.65                      | 301              | ns/op
2   | C2 JIT         | x86_64      | 1                         | 301              | ns/op
3   | GraalVM CE JIT | x86_64      | 1.06                      | 301              | ns/op

**Note:** The first in the row is the fastest JIT, and the last in the row is the slowest JIT

## arm64

No. | JIT            | Arcitecture | Normalized Geometric Mean | Nr.of.Benchmarks | Unit
----|----------------|-------------|---------------------------|------------------|--------
1   | GraalVM EE JIT | x86_64      | 0.76                      | 301              | ns/op
2   | C2 JIT         | x86_64      | 1                         | 301              | ns/op
3   | GraalVM CE JIT | x86_64      | 1.31                      | 301              | ns/op

**Note:** The first in the row is the fastest JIT, and the last in the row is the slowest JIT

To summarize, on both architectures the normalized geometric mean is consistent:

1. GraalVM EE JIT is the fastest
2. C2 JIT is in the middle
3. GraalVM CE JIT is the slowest

# API

This set of benchmarks is dedicated to larger programs using high-level Java APIs (e.g., stream, lambda, fork-join, etc.). It is created to complement the existing JIT benchmarks with another class of benchmarks.

## API Benchmarks

The miscellaneous benchmarks are measured in [average time per operation](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/annotations/Mode.java#L52), which is the score reported by the JMH.

## Benchmark

... TODO ...

## API Geometric Mean

This section describes the normalized GM for the entire miscellaneous benchmarks category, having in total 723 benchmarks.
This is purely informative to have a high-level understanding of the overall benchmark scores.

The process of generating the normalized geometric mean is:
- all benchmark scores are converted to the same unit (e.g., "ns/op")
- the resulting geometric mean is normalized to OpenJDK

## x86_64

No. | JVM distribution | Arcitecture | Normalized Geometric Mean   | Nr.of.Benchmarks | Unit
----|------------------|-------------|-----------------------------|------------------|--------
1   | GraalVM EE       | x86_64      | 0.82                        | 723              | ns/op        
2   | OpenJDK          | x86_64      | 1                           | 723              | ns/op          
3   | GraalVM CE       | x86_64      | 1.02                        | 723              | ns/op           

**Note:** The first in the row is the fastest, and the last in the row is the slowest

## arm64

No. | JVM distribution | Arcitecture | Normalized Geometric Mean | Nr.of.Benchmarks | Unit
----|------------------|-------------|---------------------------|------------------|--------
1   | GraalVM EE       | arm64       | 0.86                      | 723              | ns/op
2   | GraalVM CE       | arm64       | 0.99                      | 723              | ns/op
3   | OpenJDK          | arm64       | 1                         | 723              | ns/op

**Note:** The first in the row is the fastest, and the last in the row is the slowest

To summarize, on both architectures the normalized geometric mean for GraalVM EE is the fastest.
OpenJDK and GraalVM CE are very close and interchangeable.

# Miscellaneous

This set of benchmarks is dedicated to larger programs using high-level Java APIs (e.g., stream, lambda, fork-join, etc.). It is created to complement the existing JIT benchmarks with another class of benchmarks.

## Miscellaneous Benchmarks

The miscellaneous benchmarks are measured in [average time per operation](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/annotations/Mode.java#L52), which is the score reported by the JMH.

## Benchmark

... TODO ...

## Miscellaneous Geometric Mean

This section describes the normalized GM for the entire miscellaneous benchmarks category, having in total 80 benchmarks.
This is purely informative to have a high-level understanding of the overall benchmark scores.

The process of generating the normalized geometric mean is:
- all benchmark scores are converted to the same unit (e.g., "ns/op")
- the resulting geometric mean is normalized to OpenJDK

## x86_64

No. | JVM distribution | Arcitecture | Normalized Geometric Mean | Nr.of.Benchmarks | Unit
----|------------------|-------------|---------------------------|------------------|--------
1   | GraalVM EE       | x86_64      | 0.87                      | 80               | ns/op
2   | OpenJDK          | x86_64      | 1                         | 80               | ns/op
3   | GraalVM CE       | x86_64      | 1.1                       | 80               | ns/op

**Note:** The first in the row is the fastest, and the last in the row is the slowest

## arm64

No. | JVM distribution | Arcitecture | Normalized Geometric Mean | Nr.of.Benchmarks | Unit
----|------------------|-------------|---------------------------|------------------|--------
1   | GraalVM EE       | arm64       | 0.91                      | 80               | ns/op
2   | OpenJDK          | arm64       | 1                         | 80               | ns/op
3   | GraalVM CE       | arm64       | 1.13                      | 80               | ns/op

**Note:** The first in the row is the fastest, and the last in the row is the slowest

To summarize, on both architectures the normalized geometric mean is consistent:

1. GraalVM EE is the fastest
2. OpenJDK is in the middle
3. GraalVM CE is the slowest

## Overall Geometric Mean

This section describes the normalized GM for the entire benchmarks categories, having in total 1104 benchmarks.
This is purely informative to have a high-level understanding of the overall benchmark scores.

The process of generating the normalized geometric mean is:
- all benchmark scores are converted to the same unit (e.g., "ns/op")
- the resulting geometric mean is normalized to OpenJDK

## x86_64

No. | JVM distribution | Arcitecture | Normalized Geometric Mean | Nr.of.Benchmarks | Unit
----|------------------|-------------|---------------------------|------------------|--------
1   | GraalVM EE       | x86_64      | 0.77                      | 1104             | ns/op
2   | OpenJDK          | x86_64      | 1                         | 1104             | ns/op
3   | GraalVM CE       | x86_64      | 1.03                      | 1104             | ns/op

**Note:** The first in the row is the fastest, and the last in the row is the slowest

## arm64

No. | JVM distribution | Arcitecture | Normalized Geometric Mean | Nr.of.Benchmarks | Unit
----|------------------|-------------|---------------------------|------------------|--------
1   | GraalVM EE       | arm64       | 0.83                      | 1104             | ns/op
2   | OpenJDK          | arm64       | 1                         | 1104             | ns/op
3   | GraalVM CE       | arm64       | 1.08                      | 1104             | ns/op

**Note:** The first in the row is the fastest, and the last in the row is the slowest

To summarize, on both architectures the normalized geometric mean is consistent:

1. GraalVM EE is the fastest
2. OpenJDK is in the middle
3. GraalVM CE is the slowest

# Final Thoughts

In this article we compared three different JVM distributions (OpenJDK, GraalVM CE and GraalVM EE) on both x86_64 and arm64.
We used a set of JMH benchmarks to assess the performance of the JIT compilers performing a non-exhaustive set of optimizations.

... TODO ...

In case you want to contribute to this project, feel free to reach out or open a pull request on
[GitHub](https://github.com/ionutbalosin/jvm-performance-benchmarks/).

# References
- [OpenJDK sources](https://github.com/openjdk/jdk)
- [GraalVM sources](https://github.com/oracle/graal)
- [JHM sources](https://github.com/openjdk/jmh)
- [async-profiler](https://github.com/async-profiler/async-profiler)
- [How to not lie with statistics: the correct way to summarize benchmark results](https://dl.acm.org/doi/pdf/10.1145/5666.5673) - Philip J Fleming, John J Wallace