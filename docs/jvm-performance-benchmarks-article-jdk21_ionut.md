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

### Conclusions:

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