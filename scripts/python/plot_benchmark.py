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
import pandas as pd

# Add the current directory to the Python path to import local modules
sys.path.insert(0, os.path.dirname(__file__))

from plot_utils import (read_benchmark_results_with_jvm_identifier, 
                       clean_and_prepare_benchmark_data,
                       create_benchmark_bar_chart,
                       save_benchmark_bar_chart_to_svg)

def main():
    # Retrieve command line arguments in a very specific order
    if len(sys.argv) != 17:
        print("Usage: python plot_benchmark.py <jdk_version> <arch>")
        print("       <geometric_mean_output_folder> <jmh_output_folder> <geometric_mean_output_folder>")
        print("       <openjdk_hotspot_vm_identifier> <graalvm_ce_identifier> <graalvm_ee_identifier> <azul_prime_vm_identifier>")
        print("       <openjdk_hotspot_vm_name> <graalvm_ce_name> <graalvm_ee_name> <azul_prime_vm_name>")
        print("       <openjdk_hotspot_vm_color_palette> <graalvm_ce_color_palette> <graalvm_ee_color_palette> <azul_prime_vm_color_palette>")
        sys.exit(1)
    
    jdk_version = sys.argv[1]
    arch = sys.argv[2]
    jmh_output_folder = sys.argv[3]
    plot_output_folder = sys.argv[4]
    jvm_identifiers = sys.argv[5:9]
    jvm_names = sys.argv[9:13]
    jvm_color_palettes = sys.argv[13:17]
    
    # Create maps
    jvm_names_map = dict(zip(jvm_identifiers, jvm_names))
    jvm_color_palettes_map = dict(zip(jvm_names, jvm_color_palettes))
    
    # The corresponding benchmark files should have matching names and be located in the same folder structure
    # Use "openjdk-hotspot-vm" as the reference, which is conventionally passed as the 5th argument
    openjdk_hotspot_vm = sys.argv[5]
    reference_path = os.path.join(jmh_output_folder, openjdk_hotspot_vm)
    
    try:
        benchmark_files = os.listdir(reference_path)
    except FileNotFoundError:
        print(f"Reference path {reference_path} not found.")
        benchmark_files = []
    
    benchmark_jdk_arch = f"JDK-{jdk_version} / {arch}"
    
    for benchmark_file in benchmark_files:
        if not benchmark_file.endswith('.csv'):
            continue
            
        benchmark_file_basename = os.path.splitext(benchmark_file)[0]
        
        print(f"Plotting {benchmark_file_basename} benchmark ...")
        
        data = pd.DataFrame()
        summary = []
        for jvm_identifier in jvm_identifiers:
            benchmark_file_path = os.path.join(jmh_output_folder, jvm_identifier, benchmark_file)
            benchmark_data = read_benchmark_results_with_jvm_identifier(benchmark_file_path, jvm_names_map[jvm_identifier])
            
            if not benchmark_data.empty:
                status = "✓"
            else:
                status = "✗"
            
            summary.append(f"{jvm_identifier}:{status}")
            data = pd.concat([data, benchmark_data], ignore_index=True)
        
        data = clean_and_prepare_benchmark_data(data)
        plot = create_benchmark_bar_chart(data, "JvmIdentifier", "Legend", "Benchmark", 
                                         data['Unit'].iloc[0] if not data.empty and 'Unit' in data.columns else '', 
                                         benchmark_file_basename, benchmark_jdk_arch, jvm_color_palettes_map)
        
        if plot is not None:
            save_benchmark_bar_chart_to_svg(data, plot, plot_output_folder, benchmark_file_basename)
        
        print(f"Summary: {' '.join(summary)}")

if __name__ == "__main__":
    main()