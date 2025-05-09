<p align="center">
  <img alt="JvmPerformanceBenchmarks" title="JvmPerformanceBenchmarks" src="./docs/images/jpb_logo_320.png">
</p>

<h1 align="center">JVM Performance Benchmarks</h1>
<h4 align="center">⚡️ Exploring JITs and APIs for Peak Performance ⚡️</h4>

---

This repository contains various Java Virtual Machine (JVM) benchmarks with a primary focus on top-tier Just-In-Time (JIT) Compilers, such as C2 JIT, Graal JIT, and the Falcon JIT.

The benchmarks are structured in three distinct categories:
1. **Compiler**: This category is dedicated to assessing JIT compiler optimizations by following specific handwritten code patterns. It assesses common optimizations found in compilers, including inlining, loop unrolling, escape analysis, devirtualization, null-check elimination, range-check elimination, dead code elimination, etc.
2. **Api**: This category includes benchmarks targeting common APIs from both the Java Platform, Standard Edition (Java SE) (e.g., `java.io`, `java.nio`, `java.net`, `java.security`, `java.util`, `java.text`, `java.time`, etc.) and the Java Development Kit (JDK) (e.g., `jdk.incubator.vector`, etc.).
3. **Miscellaneous**: This category covers a broader spectrum of classical programs (e.g., Dijkstra's shortest path, factorial, Fibonacci, Game of Life, image rotation, knapsack problem, N queens, palindrome, Huffman coding/encoding, Lempel-Ziv-Welch compression, etc.) using different techniques (e.g., dynamic programming, greedy algorithms, backtracking, divide and conquer, etc.), various programming styles (e.g., iterative, functional), and high-level Java APIs (e.g., streams, lambdas, fork-join, collections, etc.).

All benchmarks are implemented using the [Java Microbenchmark Harness (JMH)](https://github.com/openjdk/jmh) library.

---

## Content

- [Purpose](#purpose)
- [Publications](#publications)
- [JMH Caveats](#jmh-caveats)
- [OS Tuning](#os-tuning)
- [JVM Coverage](#jvm-coverage)
- [JDK Coverage](#jdk-coverage)
- [JIT Coverage](#jit-coverage)
- [Benchmarks Suite](#benchmarks-suite)
  - [Main Branch Compatibility](#main-branch-compatibility)
  - [Infrastructure Baseline Benchmark](#infrastructure-baseline-benchmark)
  - [Build the Benchmarks Suite](#build-the-benchmarks-suite)
  - [Run the Benchmarks Suite](#run-the-benchmarks-suite)
- [Benchmark Plots](#benchmark-plots)
- [Contribute](#contribute)
- [License](#license)

## Purpose

The main objectives of this project are:
1. 🔍 To evaluate common JIT compiler optimizations found in compilers.
2. 🚀 To assess the performance of a JIT compiler while executing commonly used Java SE APIs and JDK APIs.
3. 📊 To evaluate the performance of a JIT compiler across a wider variety of high-level programs.

Each benchmark focuses on a specific execution pattern or task that could be fully optimized under ideal conditions (i.e., clean profiles). While some of these patterns might rarely appear directly in user programs, they can emerge after several optimizations, such as inlining high-level operations. Real-life applications can have varying conditions, making benchmarks not always a reliable predictor on a larger scale. Nonetheless, even though artificial benchmarks may not capture the complete truth, they can still offer valuable insights when properly implemented.

**Out of Scope**:
- Benchmarking "syntactic sugar" language features (e.g., records, sealed classes, local-variable type inference, etc.)
- Benchmarking the entire Java SE APIs or JDK APIs, but only the most commonly used APIs
- Benchmarking large applications (e.g., web-based microservices, etc.)
- Benchmarking Garbage Collectors, as using micro-benchmarks to assess the performance of Garbage Collectors may lead to misleading conclusions

## Publications

Below are widely referenced and well-regarded articles in the Java community, based on benchmarks from this repository, available for you to read:
- 📚 [JVM Performance Comparison for JDK 21 - Article](https://ionutbalosin.com/2024/02/jvm-performance-comparison-for-jdk-21)
- 📚 [JVM Performance Comparison for JDK 17 - Article](https://ionutbalosin.com/2023/03/jvm-performance-comparison-for-jdk-17)

## JMH Caveats

### HotSpot-Specific Compiler Hints

> JMH uses HotSpot-specific compiler hints to control the Just-in-Time (JIT) compiler.

For this reason, the fully supported JVMs are all HotSpot-based VMs, including vanilla OpenJDK and Oracle JDK builds. GraalVM is also supported. For more details, please refer to the [compiler hints](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/runner/CompilerHints.java#L37) and [supported VMs](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/runner/format/SupportedVMs.java#L31).

### Blackholes

> Using JMH Blackhole.consume() may dominate the costs, obscuring the results, in comparison to normal Java-style source code.

Starting with OpenJDK 17, the compiler supports blackholes ([JDK-8259316](https://bugs.openjdk.org/browse/JDK-8259316)). This optimization is available in [HotSpot](https://github.com/openjdk/jdk/blob/master/src/hotspot/share/opto/library_call.cpp#L7843) and the [Graal compiler](https://github.com/oracle/graal/blob/master/compiler/src/org.graalvm.compiler.nodes/src/org/graalvm/compiler/nodes/debug/BlackholeNode.java).

To ensure a fair comparison between OpenJDK 11 and OpenJDK 17 (or any newer version), compiler blackholes should be manually disabled in the benchmarks. 

The cost of `Blackhole.consume()` is zero (the compiler will not emit any instructions for the call) when compiler blackholes are enabled and supported by the top-tier JIT compiler of the underlying JVM.

In the case where a benchmark-annotated method returns a value instead of consuming it via `Blackhole.consume()` (e.g., in the case of non-void benchmark methods), JMH will wrap the return value of the benchmark method in a blackhole to prevent dead code elimination. 
In this scenario, blackholes are generated by the test infrastructure even though there is no explicit use of them in the benchmarks.

> Explicitly using `Blackhole.consume()` (in hot loops) can result in misleading benchmark results, especially when compiler blackholes are disabled.

## OS Tuning

When conducting benchmarking, it is advisable to disable potential sources of performance non-determinism. Below are the tuning configurations provided by the benchmark for specific operating systems.

### Linux

The Linux tuning script [configure-os-linux.sh](./scripts/shell/configure-os-linux.sh) performs the following actions:
- Sets CPU(s) isolation (with `isolcpus` or `cgroups`)
- Disables address space layout randomization (ASLR)
- Disables turbo boost mode
- Sets CPU governor to performance
- Disables CPU hyper-threading

> Note: These configurations are tested on Ubuntu 22.04 LTS (a Debian-based Linux distribution).

For further references, please check:
- [LLVM benchmarking tips](https://llvm.org/docs/Benchmarking.html#linux)
- [How to get consistent results when benchmarking on Linux?](https://easyperf.net/blog/2019/08/02/Perf-measurement-environment-on-Linux)

### macOS

For macOS, the Linux tuning settings described above do not apply. For instance, Apple M1/M2 (ARM-based) chips do not have hyper-threading or turbo-boost mode, and disabling ASLR is more complex.

Due to these differences, the script [configure-os-mac.sh](./scripts/shell/configure-os-mac.sh) does not enable any specific macOS tuning configurations.

### Windows

Windows is not the primary focus of this benchmark, so the script [configure-os-win.sh](./scripts/shell/configure-os-win.sh) does not enable any specific Windows tuning configurations.

## JVM Coverage

The table below summarizes the JVM distributions included in the benchmark. For transparency, we provide a brief explanation of why others are not supported.

| JVM Distribution        | Included  | Build                                                                        |
|-------------------------|-----------|------------------------------------------------------------------------------|
| OpenJDK HotSpot VM      | Yes       | [Download](https://projects.eclipse.org/projects/adoptium.temurin/downloads) |
| GraalVM CE              | Yes       | [Download](https://github.com/graalvm/graalvm-ce-builds/releases)            |
| Oracle GraalVM `(1)`    | Yes       | [Download](https://www.graalvm.org/downloads)                                |
| Azul Prime VM           | Yes `(2)` | [Download](https://www.azul.com/downloads)                                   |
| Eclipse OpenJ9 VM       | No `(3)`  | NA                                                                           |

**Notes:**
- `(1)` Oracle GraalVM was formerly known as GraalVM EE
- `(2)` License restrictions might apply
- `(3)` Please see the reasons below

### Azul Prime VM

In the case of Azul Prime VM, please ensure that you have read and understood the [license](https://www.azul.com/wp-content/uploads/Azul-Platform-Prime-Evaluation-Agreement.pdf) before publishing any benchmark results.

### Eclipse OpenJ9 VM

JMH may functionally work with the [Eclipse OpenJ9 VM](https://www.eclipse.org/openj9). However, none of the [compiler hints](https://github.com/openjdk/jmh/blob/master/jmh-core/src/main/java/org/openjdk/jmh/annotations/CompilerControl.java) will apply to Eclipse OpenJ9, potentially leading to different results (i.e., unfair advantage or disadvantage, depending on the test).

For more details, please refer to [JMH with OpenJ9](https://github.com/eclipse-openj9/openj9/issues/4649) and [Mark Stoodley on Twitter](https://twitter.com/mstoodle/status/1532344345524936704).

Currently, Eclipse OpenJ9 is **out of scope** until a suitable alternative is identified.

## JDK Coverage

Currently, the benchmark is configured to work only with the latest JDK Long-Term Support (LTS) version 25.

For support of previous JDK LTS versions, please refer to the corresponding releases listed below:

| Previously Supported JDK LTS Versions                                                                                           |
|---------------------------------------------------------------------------------------------------------------------------------|
| [JVM Performance Benchmarks for JDK 11 - Release](https://github.com/ionutbalosin/jvm-performance-benchmarks/releases/tag/v1.0) |
| [JVM Performance Benchmarks for JDK 17 - Release](https://github.com/ionutbalosin/jvm-performance-benchmarks/releases/tag/v2.0)           |
| [JVM Performance Benchmarks for JDK 21 - Release](https://github.com/ionutbalosin/jvm-performance-benchmarks/releases/tag/v3.0)           |

If you require support for a different LTS or non-LTS version, you will need to configure it manually.

### Configure JDK

After installing the JDK, you must update the JDK path in the configuration properties. Follow these steps:

1. Open the [config.properties](./settings/config.properties) file.

2. Update the specific **VM_HOME** property for the JDK you intend to use. You don't need to update all of them, only the one you plan to use for compiling and running the benchmarks.

 ```properties
 OPENJDK_HOTSPOT_VM_HOME="<path_to_jdk>"
 GRAAL_VM_CE_HOME="<path_to_jdk>"
 GRAAL_VM_EE_HOME="<path_to_jdk>"
 AZUL_PRIME_VM_HOME="<path_to_jdk>"
 ```

#### Examples

Linux OS:

```properties
OPENJDK_HOTSPOT_VM_HOME="/usr/lib/jvm/openjdk-25"
```

Mac OS:

```properties
OPENJDK_HOTSPOT_VM_HOME="/Library/Java/JavaVirtualMachines/openjdk-25/Contents/Home"
```

Windows OS:

```properties
OPENJDK_HOTSPOT_VM_HOME="/c/Program_Dev/Java/openjdk-25"
```

## JIT Coverage

The table below summarizes the top-tier JIT compilers targeted by these benchmarks.

| JVM Distribution   | Top-tier JIT Compiler |
|--------------------|-----------------------|
| OpenJDK HotSpot VM | C2 JIT                |
| GraalVM CE         | Graal JIT             |
| Oracle GraalVM     | Graal JIT             |
| Azul Prime VM      | Falcon JIT            |

## Benchmarks Suite

The benchmarks are organized into suites (i.e., benchmark suites). To run a benchmark suite on a specific JDK version, it requires a highly specific configuration. There are predefined benchmark suites provided in JSON configuration files for the supported JDK LTS version:

- [benchmarks-suite-jdk25.json](./settings/benchmarks-suite-jdk25.json)

The benchmark suite will sequentially execute all the tests defined in the configuration file.

There are several reasons why such a custom configuration is necessary:

- To selectively pass different JVM arguments for subsequent runs of the same benchmark (e.g., first run with X amount of heap memory, second run with Y amount of heap memory, etc.).
- To selectively pass different JMH options for subsequent runs of the same benchmark (e.g., first run with one thread, second run with two threads, etc.).
- To selectively control which benchmarks to include/exclude for a specific JDK version.

### Main Branch Compatibility

On the main branch, we adhere to a forward-only approach for newly created benchmarks that function with the latest LTS release. We do not intend to include a newly created benchmark in an older suite that has already been executed and published at the time of writing the benchmark. We are following a forward-only approach for newly created benchmarks.

Examples:
- A newer suite (e.g., JDK 25 suite) may include additional benchmarks that, while compatible with older JDK versions (e.g., JDK 21), will not be part of the older suite (e.g., JDK 21 suite), as the benchmark was added later.
- An existing benchmark from an older suite (e.g., JDK 21 suite) may be omitted or modified in a newer suite (e.g., JDK 25 suite). This is due to ongoing benchmark refactoring to improve, update, and ensure compliance with newer JDK features.

If running a benchmark suite for an older JDK LTS version different from the main version, we recommend switching to the corresponding JDK release branch and running it from there.

### Infrastructure Baseline Benchmark

We provide a baseline benchmark for the infrastructure, [InfrastructureBaselineBenchmark](./benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/InfrastructureBaselineBenchmark.java), which can be used to assess the infrastructure overhead for the code being measured.

This benchmark evaluates the performance of empty methods both with and without explicit inlining. Additionally, it assesses the performance difference between returning an object and consuming it via blackholes. All of these mechanisms are utilized within the real suite of tests.

This benchmark is particularly valuable when comparing different JVMs and JDKs. It is recommended to run it before any other real benchmark to establish baseline performance metrics. If the results of the infrastructure baseline benchmark differ, it may not be meaningful to compare the results of other benchmarks across different JVMs and JDKs.

### Build the Benchmarks Suite

Running one of the following commands will build the benchmark suite without executing any benchmarks:

```bash
./mvnw clean package
```

Or, to use the default `jdk25_profile`:

```bash
./mvnw -P jdk25_profile clean package
```

To build and run the benchmark suite (e.g., using the `./run-benchmarks.sh` script), please refer to the next section.

### Run the benchmarks suite

Running a benchmark suite triggers the complete setup process in a highly interactive manner, allowing the user to choose which steps to skip. The process includes the following:
- Configure the operating system.
- Configure the JVM (e.g., setting `JAVA_HOME`, etc.).
- Configure JMH (e.g., selecting the benchmark suite for the specific JDK, etc.).
- Compile the benchmarks using a JDK Maven profile.

#### Dry run

The *dry run* mode simulates all the commands without altering any OS settings or executing benchmarks. We recommend using this as a preliminary check before running the benchmarks.
```bash
./run-benchmarks.sh --dry-run
```

**Note:** You should execute this command with `sudo` to simulate the OS configuration settings. This is necessary, even in *dry run* mode, to access certain system configuration files that would otherwise be inaccessible. However, please note that it will not have any impact on the actual OS settings.

#### Normal run

```bash
./run-benchmarks.sh | tee run-benchmarks.out
```

**Note:** Launch this command with `sudo` to apply the OS configuration settings.

The benchmark results are saved under the `results/jdk-$JDK_VERSION/$ARCH/jmh/$JVM_IDENTIFIER` directory.

#### Bash scripts on Windows

To properly execute bash scripts on Windows there are a few alternatives:
- [GIT bash](https://git-scm.com/downloads)
- [Cygwin](https://www.cygwin.com/)
- Windows Subsystem for Linux (WSL)

## Benchmark plots

### Install R/ggplot2

The benchmark plot generation is based on [R/ggplot2](https://ggplot2.tidyverse.org/) that needs to be installed upfront.

### Generate the benchmark plots

To generate all benchmark plots corresponding to one `<jdk-version>` and (optionally,) a specific `<arch>`, run the below command:
```bash
./plot-benchmarks.sh <jdk-version> [<arch>]
```
If the `<arch>` parameter is omitted, it is automatically detected based on the current system architecture.

Before generating the benchmarks, the script triggers a few additional steps:
- Pre-process (e.g., merge, split) some benchmark result files. This is necessary to avoid either too fragmented or too sparse generated benchmark plots.
- Calculate the normalized geometric mean for each benchmark category (e.g., micro-optimizations, JDK API, miscellaneous). The results of the normalized geometric mean are saved under the `results/jdk-$JDK_VERSION/$ARCH/geomean` directory.

The benchmark plots are saved under the `results/jdk-$JDK_VERSION/$ARCH/plot` directory.

## Contribute

🤝 If you are interested in contributing code or providing any form of support, **including sponsorship**, you are encouraged to do so by contacting us directly. You can contribute by sending a pull request, raising an issue with an attached patch, or by directly contacting us.

### Past Contributors

🏆 Special acknowledgements to the past contributors, with major contributors to this project listed below:

**Florin Blanaru** contributed to the early stages of the project and is gratefully acknowledged for his past involvement.
- Social Media:
  - LinkedIn:   [florinblanaru](https://www.linkedin.com/in/florin-blanaru-03a411153)
  - X:          [@gigiblender](https://twitter.com/gigiblender)
  - GitHub:     [@gigiblender](https://github.com/gigiblender)
  - Mastodon:   [@gigiblender](https://mastodon.online/@gigiblender)

## License 

Please see the [LICENSE](./license/LICENSE) file for full license.

```
/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019-2025 Ionut Balosin
 * Website:      www.ionutbalosin.com
 * Social Media:
 *   LinkedIn:   ionutbalosin
 *   Bluesky:    @ionutbalosin.bsky.social
 *   X:          @ionutbalosin
 *   Mastodon:   ionutbalosin@mastodon.social
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
```