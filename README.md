# Java Virtual Machine (JVM) Performance Microbenchmarks

The repository contains different JVM microbenchmarks for both Compiler but also the Garbage Collector.

Each microbenchmark focuses on a specific execution pattern that is (potentially fully) optimized under ideal conditions (i.e., clean profiles). Such conditions might differ in real-life applications, so the microbenchmarks results are not always a good predictor on a larger scale.

For the full copyright and license information, please view the LICENSE file that was distributed with this source code.

## Authors

- [Ionut Balosin](https://www.ionutbalosin.com)
- [Florin Blanaru](https://twitter.com/gigiblender)

## Purpose

The goal of the project is to assess:

1. different Compiler optimizations by following specific code patterns. At a first glance, even though some of these patterns might rarely appear directly in the user programs, they could occur after a few optimizations (e.g., inlining of high-level operations)
2. different Garbage Collectors' efficiency in both allocating but also reclaiming objects

In this regard, all microbenchmarks are relatively simple but very focused on specific goals.

The microbenchmarks rely on [Java Microbenchmark Harness (JMH)](https://github.com/openjdk/jmh) which is an excellent tool for measuring the throughput and sampling latencies end to end.

We left **out of scope**, for now, any specific language feature, the larger applications (i.e., macro benchmarking), etc.
 

## JMH caveats

### HotSpot-specific compiler hints

> JMH uses HotSpot-specific compiler hints to control the Just-in-Time (JIT) compiler. 

For that reason, at the moment, the fully supported JVMs are all the HotSpot-based VMs, including vanilla OpenJDK and Oracle JDK builds.
For more details please check the [compiler hints](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/runner/CompilerHints.java#L37) and [supported VMs](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/runner/format/SupportedVMs.java#L31).

### Blackhole.consume()

> Using JMH Blackhole.consume() might dominate the costs, obscuring the results, in comparison to a normal Java-style source code.

Starting OpenJDK 17 the compiler supports blackholes [JDK-8259316](https://bugs.openjdk.org/browse/JDK-8259316) nevertheless this is a HotSpot-specific optimization.

For that reason, to focus on broader reusability (i.e., other JDK versions and distributions) and increased test fidelity we recommend (whenever it is possible) avoiding `Blackhole.consume()`.

### Support for GraalVM 

Since JMH 1.21, [GraalVM](https://www.graalvm.org) is also [recognized and experimentally supported](https://mail.openjdk.org/pipermail/jmh-dev/2018-May/002753.html). This means we need to pay a bit more attention during experiments.

### Support for Eclipse OpenJ9

JMH may functionally work with [Eclipse OpenJ9](https://www.eclipse.org/openj9), nevertheless, all the [compiler hints](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/annotations/CompilerControl.java) will not apply to Eclipse OpenJ9 and this might lead to different results (i.e., unfair advantage or disadvantage, depending on the test).

For more details please check [JMH with OpenJ9](https://github.com/eclipse-openj9/openj9/issues/4649) and [Mark Stoodley on Twitter](https://twitter.com/mstoodle/status/1532344345524936704)

At the moment we leave it **out of scope** Eclipse OpenJ9 until we find a proper alternative.

## How to get consistent results

When doing benchmarking it is recommended to disable potential sources of performance non-determinism, as follows:
- disable address space randomization
- disable turbo boost
- set `scaling_governor` to `performance`
- disable hyper-threading
- set cpu affinity
- set process priority
- _optionally_, disable Display Power Management system (DPMS)

For further references please check:
- [LLVM benchmarking tips](https://llvm.org/docs/Benchmarking.html#linux)
- [How to get consistent results when benchmarking on Linux?](https://easyperf.net/blog/2019/08/02/Perf-measurement-environment-on-Linux) 
- [benchmark_start.sh](https://github.com/simonis/zlib-bench/blob/master/benchmarks/bash/benchmark_start.sh)
- [cpu_fixed.sh](https://github.com/bourgesl/nearly-optimal-mergesort-code/blob/master/cpu_fixed.sh)

## Prerequisites

### Install JDK

To run the benchmarks on different JKD versions / JVMs distributions, please install the corresponding build:

No. | JVM distribution   | JDK version |  Build
-------------- |--------------------|--------------------| -------------------------------
01 | OpenJDK HotSpot VM | 11, 17             | [OpenJDK](https://jdk.java.net/archive/)
02 | Graal VM CE        | 11, 17             | [GraalVM CE](https://www.graalvm.org/downloads/)
03 | Graal VM EE        | 11, 17             | [GraalVM CE](https://www.graalvm.org/downloads/)
04 | Eclipse OpenJ9 VM  | 11, 17             | [Eclipse OpenJ9](https://adoptium.net/temurin/releases/)

>Note: we support only LTS versions. If there is a need for another JDK feature release, please configure it by yourself.

### Configure the script

Open the [configure_jvm.sh](./configure_jvm.sh) script file and update the corresponding below property (as per your system path):
```
JAVA_HOME=<path_to_jvm>
```

## Run the microbenchmarks

### Dry run

This will generate and print all the commands but without executing any real benchmark. 
```
./run-benchmarks.sh --dry-run
```

### Normal run

```
sudo ./run-benchmarks.sh
```

> sudo is needed to properly apply the OS configuration settings.

You can also redirect the output to a file for later analysis:

```
sudo ./run-benchmarks.sh | tee run-benchmarks.out
```
Each JMH test suite result is written to under `results/jdk-$VERSION/$ARCH/$JVM_NAME/$BENCHMARK_NAME$.json`