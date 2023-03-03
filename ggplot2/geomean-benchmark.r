#
#  JVM Performance Benchmarks
#
#  Copyright (C) 2019 - 2022 Ionut Balosin
#  Website: www.ionutbalosin.com
#  Twitter: @ionutbalosin
#
#  Co-author: Florin Blanaru
#  Twitter: @gigiblender
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

source("./ggplot2/geomean-utils.r")

# retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
jmh_output_folder <- args[1]
openjdk_hotspot_vm_identifier <- args[2]
graalvm_ce_identifier <- args[3]
graalvm_ee_identifier <- args[4]

# Define the Compiler benchmark results for that we will compute the geometric mean (i.e., geomean) as a separate category
jit_benchmark_files <- list(
  "BranchlessBitwiseBenchmark.csv",
  "CanonicalizeInductionVariableBenchmark.csv",
  "CodeCacheBusterBenchmark.csv",
  "DeadLocalAllocationStoreBenchmark.csv",
  "DeadMethodCallStoreBenchmark.csv",
  "EnumValueLookupBenchmark.csv",
  "FalseSharingBenchmark.csv",
  "IfConditionalBranchBenchmark.csv",
  "JustInTimeConstantsBenchmark.csv",
  "LockCoarseningBenchmark.csv",
  "LockElisionBenchmark.csv",
  "LoopFissionBenchmark.csv",
  "LoopFusionBenchmark.csv",
  "LoopInterchangeBenchmark.csv",
  "LoopInvariantCodeMotionBenchmark.csv",
  "LoopReductionBenchmark.csv",
  "LoopUnswitchBenchmark.csv",
  "MandelbrotVectorApiBenchmark.csv",
  "MegamorphicInterfaceCallBenchmark.csv",
  "MegamorphicMethodCallBenchmark.csv",
  "MethodArgsBusterBenchmark.csv",
  "NpeControlFlowBenchmark.csv",
  "NpeThrowBenchmark.csv",
  "RecursiveMethodCallBenchmark.csv",
  "ScalarEvolutionAndLoopOptimizationBenchmark.csv",
  "ScalarReplacementBenchmark.csv",
  "SepiaVectorApiBenchmark.csv",
  "SortVectorApiBenchmark.csv",
  "StackSpillingBenchmark.csv",
  "StrengthReductionBenchmark.csv",
  "TailRecursionBenchmark.csv",
  "VarArgsBenchmark.csv",
  "VectorApiBenchmark.csv",
  "VectorizationPatternsMultipleFloatArraysBenchmark.csv",
  "VectorizationPatternsMultipleIntArraysBenchmark.csv",
  "VectorizationPatternsSingleIntArrayBenchmark.csv",
  "VectorizationScatterGatherPatternBenchmark.csv"
)

# Define the macro benchmark results for that we will compute the geometric mean (i.e., geomean) as a separate category
macro_benchmark_files <- list(
  "FactorialBenchmark.csv",
  "FibonacciBenchmark.csv",
  "HuffmanCodingBenchmark.csv",
  "PalindromeBenchmark.csv",
  "PopulationVarianceBenchmark.csv",
  "PrimesBenchmark.csv",
  "WordFrequencyBenchmark.csv"
)

# Define the Garbage Collector benchmark results for that we will compute the geometric mean (i.e., geomean) as a separate category
gc_benchmark_files <- list(
  "BurstHeapMemoryAllocatorBenchmark_1thread.csv",
  "BurstHeapMemoryAllocatorBenchmark_2threads.csv",
  "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_1thread.csv",
  "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_2threads.csv",
  "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_1thread.csv",
  "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_2threads.csv",
  "HeapMemoryBandwidthAllocatorBenchmark_1thread.csv",
  "HeapMemoryBandwidthAllocatorBenchmark_2threads.csv",
  "ReadBarriersChainOfReferencesBenchmark.csv",
  "ReadBarriersLoopingOverArrayBenchmark.csv",
  "ReadWriteBarriersBenchmark.csv",
  "WriteBarriersLoopingOverArrayBenchmark.csv"
)

# Compiler benchmarks geometric mean

openjdk_hotspot_vm_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, openjdk_hotspot_vm_identifier, jit_benchmark_files)
graalvm_ce_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ce_identifier, jit_benchmark_files)
graalvm_ee_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ee_identifier, jit_benchmark_files)
jit_geomean <- c(
  "OpenJDK HotSpot VM" = openjdk_hotspot_vm_geomean,
  "GraalVM CE" = graalvm_ce_geomean,
  "GraalVM EE" = graalvm_ee_geomean,
  "Unit" = "ns/op"
)
writeJmhCsvResults(jmh_output_folder, "Geomean_jit.csv", data.frame(t(sapply(jit_geomean, c))))

# Macro benchmarks geometric mean

openjdk_hotspot_vm_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, openjdk_hotspot_vm_identifier, macro_benchmark_files)
graalvm_ce_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ce_identifier, macro_benchmark_files)
graalvm_ee_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ee_identifier, macro_benchmark_files)
macro_geomean <- c(
  "OpenJDK HotSpot VM" = openjdk_hotspot_vm_geomean,
  "GraalVM CE" = graalvm_ce_geomean,
  "GraalVM EE" = graalvm_ee_geomean,
  "Unit" = "ns/op"
)
writeJmhCsvResults(jmh_output_folder, "Geomean_macro.csv", data.frame(t(sapply(macro_geomean, c))))

# Garbage Collector benchmarks geometric mean

openjdk_hotspot_vm_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, gc_benchmark_files)
writeJmhCsvResults(jmh_output_folder, "Geomean_gc_openjdk_hotspot_vm.csv", openjdk_hotspot_vm_gc_geomean)

graalvm_ce_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ce_identifier, gc_benchmark_files)
writeJmhCsvResults(jmh_output_folder, "Geomean_gc_graalvm_ce.csv", graalvm_ce_gc_geomean)

graalvm_ee_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ee_identifier, gc_benchmark_files)
writeJmhCsvResults(jmh_output_folder, "Geomean_gc_graalvm_ee.csv", graalvm_ee_gc_geomean)
