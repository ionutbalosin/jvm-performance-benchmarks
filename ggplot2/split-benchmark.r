#
# JVM Performance Benchmarks
#
# Copyright (C) 2019 - 2023 Ionut Balosin
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

source("./ggplot2/split-utils.r")

# retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
jmh_output_folder <- args[1]
openjdk_hotspot_vm_identifier <- args[2]
graalvm_ce_identifier <- args[3]
graalvm_ee_identifier <- args[4]

# Split the benchmark result files based on the column name and values criteria differentiator

# Split FactorialBenchmark
benchmark_file <- "FactorialBenchmark.csv"
column_name <- "Param..n"
column_values <- list("1000")
output_file <- "FactorialBenchmark_param_n_1000.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

benchmark_file <- "FactorialBenchmark.csv"
column_name <- "Param..n"
column_values <- list("5000")
output_file <- "FactorialBenchmark_param_n_5000.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

# Split FibonacciBenchmark
benchmark_file <- "FibonacciBenchmark.csv"
column_name <- "Param..n"
column_values <- list("500")
output_file <- "FibonacciBenchmark_param_n_500.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

benchmark_file <- "FibonacciBenchmark.csv"
column_name <- "Param..n"
column_values <- list("3000")
output_file <- "FibonacciBenchmark_param_n_3000.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

# Split NpeControlFlowBenchmark
benchmark_file <- "NpeControlFlowBenchmark.csv"
column_name <- "Param..nullThreshold"
column_values <- list("0")
output_file <- "NpeControlFlowBenchmark_param_nullThreshold_0.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

benchmark_file <- "NpeControlFlowBenchmark.csv"
column_name <- "Param..nullThreshold"
column_values <- list("16")
output_file <- "NpeControlFlowBenchmark_param_nullThreshold_16.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

# Split HeapMemoryBandwidthAllocatorBenchmark - 1 thread
benchmark_file <- "HeapMemoryBandwidthAllocatorBenchmark_1thread.csv"
column_name <- "Param..size"
column_values <- list("_32_B")
output_file <- "HeapMemoryBandwidthAllocatorBenchmark_1thread_param_size_32_B.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

benchmark_file <- "HeapMemoryBandwidthAllocatorBenchmark_1thread.csv"
column_name <- "Param..size"
column_values <- list("_16_KB")
output_file <- "HeapMemoryBandwidthAllocatorBenchmark_1thread_param_size_16_KB.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

benchmark_file <- "HeapMemoryBandwidthAllocatorBenchmark_1thread.csv"
column_name <- "Param..size"
column_values <- list("_8_MB")
output_file <- "HeapMemoryBandwidthAllocatorBenchmark_1thread_param_size_8_MB.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

# Split HeapMemoryBandwidthAllocatorBenchmark - 2 threads
benchmark_file <- "HeapMemoryBandwidthAllocatorBenchmark_2threads.csv"
column_name <- "Param..size"
column_values <- list("_32_B")
output_file <- "HeapMemoryBandwidthAllocatorBenchmark_2threads_param_size_32_B.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

benchmark_file <- "HeapMemoryBandwidthAllocatorBenchmark_2threads.csv"
column_name <- "Param..size"
column_values <- list("_16_KB")
output_file <- "HeapMemoryBandwidthAllocatorBenchmark_2threads_param_size_16_KB.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

benchmark_file <- "HeapMemoryBandwidthAllocatorBenchmark_2threads.csv"
column_name <- "Param..size"
column_values <- list("_8_MB")
output_file <- "HeapMemoryBandwidthAllocatorBenchmark_2threads_param_size_8_MB.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

# Split SortVectorApiBenchmark
benchmark_file <- "SortVectorApiBenchmark.csv"
column_name <- "Param..arraySize"
column_values <- list("64")
output_file <- "SortVectorApiBenchmark_param_arraySize_64.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

benchmark_file <- "SortVectorApiBenchmark.csv"
column_name <- "Param..arraySize"
column_values <- list("1024")
output_file <- "SortVectorApiBenchmark_param_arraySize_1024.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

benchmark_file <- "SortVectorApiBenchmark.csv"
column_name <- "Param..arraySize"
column_values <- list("65536")
output_file <- "SortVectorApiBenchmark_param_arraySize_65536.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

# Split VectorApiBenchmark
benchmark_file <- "VectorApiBenchmark.csv"
column_name <- "Param..size"
column_values <- list("262144")
output_file <- "VectorApiBenchmark_param_size_262144.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)

benchmark_file <- "VectorApiBenchmark.csv"
column_name <- "Param..size"
column_values <- list("1048576")
output_file <- "VectorApiBenchmark_param_size_1048576.csv"
processJmhCsvResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, column_name, column_values, output_file)
processJmhCsvResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, column_name, column_values, output_file)
