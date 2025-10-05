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

import pandas as pd
import numpy as np
import os
import re
from .utils import read_csv_results_from_file, calculate_geometric_mean

def sanitize_benchmark_data(data):
    """
    Apply column sanitizations on the data frame
    Python equivalent of R's sanitizeBenchmarkData function
    """
    # Delete the rows containing profile stats in the Benchmark name (e.g., gc:·gc.alloc.rate)
    data = data[~data['Benchmark'].str.contains(':·', na=False)]
    
    # Replace commas with dots for Score columns for consistency
    if 'Score' in data.columns:
        data['Score'] = data['Score'].astype(str).str.replace(',', '.').astype(float)
    
    # Keep only the necessary data frame columns for plotting
    required_cols = ['Benchmark', 'Score', 'Unit']
    available_cols = [col for col in required_cols if col in data.columns]
    data = data[available_cols]
    
    return data

def sanitize_and_merge_benchmark_results(jmh_output_folder, jvm_identifier, benchmark_files):
    """
    Sanitize and merge all benchmark results for different benchmark files into a single data frame
    Python equivalent of R's sanitizeAndMergeBenchmarkResults function
    """
    result = pd.DataFrame()
    
    for benchmark_file in benchmark_files:
        benchmark_file_basename = os.path.splitext(benchmark_file)[0]
        
        benchmark_file_path = os.path.join(jmh_output_folder, jvm_identifier, benchmark_file)
        data = read_csv_results_from_file(benchmark_file_path)
        
        if not data.empty:
            data = sanitize_benchmark_data(data)
            result = pd.concat([result, data], ignore_index=True)
    
    return result

def standardize_benchmark_time_units(data):
    """
    Convert all average time scores to "ns/op" (for consistency across all benchmark results)
    Python equivalent of R's standardizeBenchmarkTimeUnits function
    """
    if data.empty or 'Unit' not in data.columns or 'Score' not in data.columns:
        return data
    
    # Define conversion factors
    sec_to_ns = 1e9
    ms_to_ns = 1e6
    us_to_ns = 1e3
    
    # Convert "sec/op" to "ns/op"
    sec_mask = data['Unit'] == 'sec/op'
    data.loc[sec_mask, 'Score'] = data.loc[sec_mask, 'Score'] * sec_to_ns
    data.loc[sec_mask, 'Unit'] = 'ns/op'
    
    # Convert "ms/op" to "ns/op"
    ms_mask = data['Unit'] == 'ms/op'
    data.loc[ms_mask, 'Score'] = data.loc[ms_mask, 'Score'] * ms_to_ns
    data.loc[ms_mask, 'Unit'] = 'ns/op'
    
    # Convert "us/op" to "ns/op"
    us_mask = data['Unit'] == 'us/op'
    data.loc[us_mask, 'Score'] = data.loc[us_mask, 'Score'] * us_to_ns
    data.loc[us_mask, 'Unit'] = 'ns/op'
    
    return data

def calculate_geometric_mean_report(jmh_output_folder, jvm_identifier, benchmark_files):
    """
    Calculate the geometric mean report (e.g., the geomean score and the total number of benchmarks) 
    for average time scores
    Python equivalent of R's calculateGeometricMeanReport function
    """
    data = sanitize_and_merge_benchmark_results(jmh_output_folder, jvm_identifier, benchmark_files)
    data = standardize_benchmark_time_units(data)
    
    print(f"The {jvm_identifier} category contains {len(data)} benchmarks")
    
    if len(data) > 0 and 'Score' in data.columns:
        geomean = calculate_geometric_mean(data['Score'].values)
    else:
        geomean = float('nan')
    
    return {
        'geomean': geomean,
        'benchmarks': len(data)
    }