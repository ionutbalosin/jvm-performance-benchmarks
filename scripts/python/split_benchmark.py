#!/usr/bin/env python3
#
# JVM Performance Benchmarks
#
# Copyright (C) 2019-2025 Ionut Balosin
# Website:      www.ionutbalosin.com
# Social Media:
#   LinkedIn:   ionutbalosin
#   Bluesky:    @ionutbalosin.bsky.social
#   X:          @ionutbalosin
#   Mastodon:   ionutbalosin@mastodon.social
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

import sys
import os

# Add the current directory to the Python path to import local modules
sys.path.insert(0, os.path.dirname(__file__))

from split_utils import split_and_write_benchmark_results_to_file

def split_and_process_benchmark(jvm_identifiers, benchmark_file, param_name, column_values):
    """
    Define a function to split and process benchmarks
    Python equivalent of R's splitAndProcessBenchmark function
    """
    column_name = f"Param..{param_name}"
    for jvm_identifier in jvm_identifiers:
        benchmark_name = os.path.splitext(benchmark_file)[0]
        output_file = f"{benchmark_name}_param_{param_name}_{'_'.join(map(str, column_values))}.csv"
        split_and_write_benchmark_results_to_file(
            jmh_output_folder, jvm_identifier, benchmark_file, 
            column_name, column_values, output_file
        )

def main():
    global jmh_output_folder
    
    # Retrieve command line arguments in a very specific order
    if len(sys.argv) != 6:
        print("Usage: python split_benchmark.py <jmh_output_folder>",
              "<openjdk_hotspot_vm_identifier> <graalvm_ce_identifier> <graalvm_ee_identifier> <azul_prime_vm_identifier>")
        sys.exit(1)
    
    jmh_output_folder = sys.argv[1]
    jvm_identifiers = sys.argv[2:6]
    
    # Split and process FactorialBenchmark
    split_and_process_benchmark(jvm_identifiers, "FactorialBenchmark.csv", "n", ["1000"])
    split_and_process_benchmark(jvm_identifiers, "FactorialBenchmark.csv", "n", ["5000"])
    
    # Split and process FibonacciBenchmark
    split_and_process_benchmark(jvm_identifiers, "FibonacciBenchmark.csv", "n", ["500"])
    split_and_process_benchmark(jvm_identifiers, "FibonacciBenchmark.csv", "n", ["3000"])
    
    # Split and process NpeControlFlowBenchmark
    split_and_process_benchmark(jvm_identifiers, "NpeControlFlowBenchmark.csv", "nullThreshold", ["0"])
    split_and_process_benchmark(jvm_identifiers, "NpeControlFlowBenchmark.csv", "nullThreshold", ["16"])
    
    # Split and process SortVectorApiBenchmark
    split_and_process_benchmark(jvm_identifiers, "SortVectorApiBenchmark.csv", "arraySize", ["64"])
    split_and_process_benchmark(jvm_identifiers, "SortVectorApiBenchmark.csv", "arraySize", ["1024"])
    split_and_process_benchmark(jvm_identifiers, "SortVectorApiBenchmark.csv", "arraySize", ["65536"])
    
    # Split and process VectorApiBenchmark
    split_and_process_benchmark(jvm_identifiers, "VectorApiBenchmark.csv", "size", ["262144"])
    split_and_process_benchmark(jvm_identifiers, "VectorApiBenchmark.csv", "size", ["1048576"])
    
    # Split and process StackTraceBenchmark
    split_and_process_benchmark(jvm_identifiers, "StackTraceBenchmark.csv", "stackDepth", ["1"])
    split_and_process_benchmark(jvm_identifiers, "StackTraceBenchmark.csv", "stackDepth", ["10"])
    split_and_process_benchmark(jvm_identifiers, "StackTraceBenchmark.csv", "stackDepth", ["100"])
    split_and_process_benchmark(jvm_identifiers, "StackTraceBenchmark.csv", "stackDepth", ["1000"])
    
    # Split and process RandomGeneratorBenchmark
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["L128X1024MixRandom"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["L128X128MixRandom"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["L128X256MixRandom"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["L32X64MixRandom"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["L64X1024MixRandom"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["L64X128MixRandom"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["L64X128StarStarRandom"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["L64X256MixRandom"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["Random"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["SecureRandom"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["SplittableRandom"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["Xoroshiro128PlusPlus"])
    split_and_process_benchmark(jvm_identifiers, "RandomGeneratorBenchmark.csv", "generatorName", ["Xoshiro256PlusPlus"])
    
    # Split and process VPThreadSynchronizationBenchmark
    split_and_process_benchmark(jvm_identifiers, "VPThreadSynchronizationBenchmark.csv", "backoffType", ["NONE"])
    split_and_process_benchmark(jvm_identifiers, "VPThreadSynchronizationBenchmark.csv", "backoffType", ["SLEEP"])
    split_and_process_benchmark(jvm_identifiers, "VPThreadSynchronizationBenchmark.csv", "backoffType", ["PARK"])

if __name__ == "__main__":
    main()