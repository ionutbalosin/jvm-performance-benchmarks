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

For that reason, to provide more tests fidelity we recommend (whenever it is possible) to avoid `Blackhole.consume()`

### Support for GraalVM 

Since JMH 1.21, [GraalVM](https://www.graalvm.org) is also [recognized and experimentally supported](https://mail.openjdk.org/pipermail/jmh-dev/2018-May/002753.html). This means we need to pay a bit more attention during experiments.

### Support for Eclipse OpenJ9

JMH may functionally work with [Eclipse OpenJ9](https://www.eclipse.org/openj9), nevertheless, all the [compiler hints](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/annotations/CompilerControl.java) will not apply to Eclipse OpenJ9 and this might lead to different results (i.e., unfair advantage or disadvantage, depending on the test).

For more details please check [JMH with OpenJ9](https://github.com/eclipse-openj9/openj9/issues/4649) and [Mark Stoodley on Twitter](https://twitter.com/mstoodle/status/1532344345524936704)

At the moment we leave it **out of scope** Eclipse OpenJ9 until we find a proper alternative.

## How to get consistent results

When doing benchmarking it is recommended to disable potential sources of performance non-determinism, as follows:
- disable turbo boost
- disable hyper-threading
- set `scaling_governor` to `performance`
- set cpu affinity
- set process priority
- _optionally_, disable Display Power Management system (DPMS)

For further references please check:
- [How to get consistent results when benchmarking on Linux?](https://easyperf.net/blog/2019/08/02/Perf-measurement-environment-on-Linux) 
- [benchmark_start.sh](https://github.com/simonis/zlib-bench/blob/master/benchmarks/bash/benchmark_start.sh)
- [cpu_fixed.sh](https://github.com/bourgesl/nearly-optimal-mergesort-code/blob/master/cpu_fixed.sh)

## Prerequisites

It is necessary to have installed JDK 17 build (i.e., latest LTS), the preferable one which ships [Shenandoah GC](https://wiki.openjdk.org/display/shenandoah/Main) (otherwise, some benchmarks will fail).

## Step 1 - Compile and package

```
./mvnw spotless:apply package
```

**Note** The argument `spotless:apply` is optional but nice to have it

## Step 2 - Run the microbenchmarks

### Dry run

This will generate and print all the commands but without executing any real benchmark. 
```
./run-benchmarks.sh --dry-run
```

### Normal run

```
./run-benchmarks.sh
```

You can also redirect the output to a file for later analysis:

```
./run-benchmarks.sh | tee run-benchmarks.out
```

Every benchmark does 5x10s warmups, 5x10s measurements, and 3 forks. These are reconsidered to allow longer in-JVM runs and produce better/ most accurate results. However, in some corner cases, it might still not be enough, but these are out of scope.

Each JMH test suite result is written to `results/$JDK_VERSION/$ARCH/$JVM/$BENCHMARK_NAME$.json`