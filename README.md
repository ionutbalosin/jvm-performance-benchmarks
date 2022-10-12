# Java Virtual Machine (JVM) Performance Benchmarks

The repository contains different JVM benchmarks for both Compiler but also the Garbage Collector.

For the full copyright and license information, please view the LICENSE file that was distributed with this source code.

You are not free to publish, distribute, transmit or use this material for any commercial purpose without the explicit permission of the author(s).

Please visit the author's [website](https://www.ionutbalosin.com) for more details.

## Prerequisites

It is necessary to have installed JDK 17 build, the preferable one which ships Shenandoah Garbage Collector (otherwise, the GC benchmarks which require Shenandoah GC will fail).

## Step 1 - Compile and package the benchmarks

```
./mvnw spotless:apply package
```

**Note** The argument `spotless:apply` is optional but nice to have it

## Step 2 - Run the benchmarks

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