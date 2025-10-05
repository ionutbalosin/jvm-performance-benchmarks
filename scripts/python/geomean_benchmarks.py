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

from geomean_utils import calculate_geometric_mean_report
from utils import write_data_to_csv_file

def calculate_normalized_geometric_mean(jvm_identifier, name_map, benchmark_files, reference_geomean, column_name):
    """
    Calculate and normalize geometric mean
    Python equivalent of R's calculateNormalizedGeometricMean function
    """
    report_geomean = calculate_geometric_mean_report(jmh_output_folder, jvm_identifier, benchmark_files)
    normalized_geomean = report_geomean['geomean'] / reference_geomean if reference_geomean else float('nan')
    
    result_df = pd.DataFrame({
        column_name: [name_map.get(jvm_identifier, jvm_identifier)],
        'Normalized Geometric Mean': [round(normalized_geomean, 2)],
        'Nr of Benchmarks': [report_geomean['benchmarks']],
        'Benchmarks Unit': ['ns/op']
    })
    
    return result_df

def main():
    global jmh_output_folder
    
    # Retrieve command line arguments in a very specific order
    if len(sys.argv) < 20:
        print("Usage: python geomean_benchmark.py <jmh_output_folder> <geometric_mean_output_folder>")
        print("       <openjdk_hotspot_vm_identifier> <graalvm_ce_identifier> <graalvm_ee_identifier> <azul_prime_vm_identifier>")
        print("       <openjdk_hotspot_vm_name> <graalvm_ce_name> <graalvm_ee_name> <azul_prime_vm_name>")
        print("       <openjdk_hotspot_vm_compiler> <graalvm_ce_compiler> <graalvm_ee_compiler> <azul_prime_vm_compiler>")
        print("       <api_benchmark_files_length> <compiler_benchmark_files_length> <miscellaneous_benchmark_files_length>")
        print("       <api_benchmark_files> <compiler_benchmark_files> <miscellaneous_benchmark_files>")
        sys.exit(1)
    
    jmh_output_folder = sys.argv[1]
    geometric_mean_output_folder = sys.argv[2]
    
    jvm_identifiers = sys.argv[3:7]
    jvm_names = sys.argv[7:11]
    compiler_names = sys.argv[11:15]
    
    api_benchmark_files_length = int(sys.argv[15])
    compiler_benchmark_files_length = int(sys.argv[16])
    miscellaneous_benchmark_files_length = int(sys.argv[17])
    
    # Extract benchmark files based on lengths
    start_index = 18
    api_benchmark_files = sys.argv[start_index:start_index + api_benchmark_files_length]
    start_index += api_benchmark_files_length
    compiler_benchmark_files = sys.argv[start_index:start_index + compiler_benchmark_files_length]
    start_index += compiler_benchmark_files_length
    miscellaneous_benchmark_files = sys.argv[start_index:start_index + miscellaneous_benchmark_files_length]
    
    # Create maps with labels as values for the identifiers
    jvm_names_map = dict(zip(jvm_identifiers, jvm_names))
    compiler_names_map = dict(zip(jvm_identifiers, compiler_names))
    
    # Define the list of benchmarks to be excluded from the geometric mean calculation
    excluded_benchmark_files = [
        "InfrastructureBaselineBenchmark.csv"
    ]
    
    # Remove duplicate elements to ensure the benchmark list has unique entries
    api_benchmark_files = list(set(api_benchmark_files))
    compiler_benchmark_files = list(set(compiler_benchmark_files))
    miscellaneous_benchmark_files = list(set(miscellaneous_benchmark_files))
    
    # Remove elements that are present in the exclusion list
    api_benchmark_files = [f for f in api_benchmark_files if f not in excluded_benchmark_files]
    compiler_benchmark_files = [f for f in compiler_benchmark_files if f not in excluded_benchmark_files]
    miscellaneous_benchmark_files = [f for f in miscellaneous_benchmark_files if f not in excluded_benchmark_files]
    all_benchmark_files = api_benchmark_files + compiler_benchmark_files + miscellaneous_benchmark_files
    
    print(f"Extracted {len(api_benchmark_files)} 'api' benchmarks (post-filtering).")
    print(f"Extracted {len(compiler_benchmark_files)} 'compiler' benchmarks (post-filtering).")
    print(f"Extracted {len(miscellaneous_benchmark_files)} 'miscellaneous' benchmarks (post-filtering).")
    print(f"Extracted {len(all_benchmark_files)} 'all' benchmarks (post-filtering).")
    
    # Calculate the geometric mean of API benchmarks
    # Note: Use "openjdk-hotspot-vm" as the reference, which is conventionally passed in the 3rd argument
    openjdk_hotspot_vm = sys.argv[3]
    reference_geomean = calculate_geometric_mean_report(jmh_output_folder, openjdk_hotspot_vm, api_benchmark_files)['geomean']
    api_summaries = []
    for jvm_id in jvm_identifiers:
        summary = calculate_normalized_geometric_mean(jvm_id, jvm_names_map, api_benchmark_files, reference_geomean, "VM")
        api_summaries.append(summary)
    
    if api_summaries:
        api_result = pd.concat(api_summaries, ignore_index=True)
        write_data_to_csv_file(geometric_mean_output_folder, "api.csv", api_result)
    
    # Calculate the geometric mean of Compiler benchmarks
    reference_geomean = calculate_geometric_mean_report(jmh_output_folder, openjdk_hotspot_vm, compiler_benchmark_files)['geomean']
    compiler_summaries = []
    for jvm_id in jvm_identifiers:
        summary = calculate_normalized_geometric_mean(jvm_id, compiler_names_map, compiler_benchmark_files, reference_geomean, "Compiler")
        compiler_summaries.append(summary)
    
    if compiler_summaries:
        compiler_result = pd.concat(compiler_summaries, ignore_index=True)
        write_data_to_csv_file(geometric_mean_output_folder, "compiler.csv", compiler_result)
    
    # Calculate the geometric mean of miscellaneous benchmarks
    reference_geomean = calculate_geometric_mean_report(jmh_output_folder, openjdk_hotspot_vm, miscellaneous_benchmark_files)['geomean']
    miscellaneous_summaries = []
    for jvm_id in jvm_identifiers:
        summary = calculate_normalized_geometric_mean(jvm_id, jvm_names_map, miscellaneous_benchmark_files, reference_geomean, "VM")
        miscellaneous_summaries.append(summary)
    
    if miscellaneous_summaries:
        miscellaneous_result = pd.concat(miscellaneous_summaries, ignore_index=True)
        write_data_to_csv_file(geometric_mean_output_folder, "miscellaneous.csv", miscellaneous_result)
    
    # Calculate the geometric mean of all benchmarks
    reference_geomean = calculate_geometric_mean_report(jmh_output_folder, openjdk_hotspot_vm, all_benchmark_files)['geomean']
    all_summaries = []
    for jvm_id in jvm_identifiers:
        summary = calculate_normalized_geometric_mean(jvm_id, jvm_names_map, all_benchmark_files, reference_geomean, "VM")
        all_summaries.append(summary)
    
    if all_summaries:
        all_result = pd.concat(all_summaries, ignore_index=True)
        write_data_to_csv_file(geometric_mean_output_folder, "summary.csv", all_result)

if __name__ == "__main__":
    import pandas as pd
    main()