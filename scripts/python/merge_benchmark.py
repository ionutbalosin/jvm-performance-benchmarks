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

from merge_utils import merge_and_write_benchmark_results_to_file

def main():
    # Retrieve command line arguments in a very specific order
    if len(sys.argv) != 6:
        print("Usage: python merge_benchmark.py <jmh_output_folder>",
              "<openjdk_hotspot_vm_identifier> <graalvm_ce_identifier> <graalvm_ee_identifier> <azul_prime_vm_identifier>")
        sys.exit(1)
    
    jmh_output_folder = sys.argv[1]
    jvm_identifiers = sys.argv[2:6]
    
    # Define the benchmark files and column values
    benchmark_files = [
        "LockCoarseningBenchmark_withBiasedLocking.csv",
        "LockCoarseningBenchmark_withoutBiasedLocking.csv"
    ]
    column_name = "Param..biasedLocking"
    column_values = ["enabled", "disabled"]
    output_file = "LockCoarseningBenchmark.csv"
    
    # Process JMH JIT results for each JVM identifier
    for jvm_identifier in jvm_identifiers:
        merge_and_write_benchmark_results_to_file(
            jmh_output_folder, jvm_identifier, benchmark_files, 
            column_name, column_values, output_file
        )

if __name__ == "__main__":
    main()