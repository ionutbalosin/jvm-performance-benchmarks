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
import os
from .utils import read_csv_results_from_file, write_data_to_csv_file

def merge_benchmark_results(path, benchmark_file_paths, column_name, column_values):
    """
    Merge all benchmark results for different JIT results into a single data frame
    and append a new column "<column_name>":"<column_values>" as a differentiator
    Python equivalent of R's mergeBenchmarkResults function
    """
    result = pd.DataFrame()
    
    for i, benchmark_file_path in enumerate(benchmark_file_paths):
        full_path = os.path.join(path, benchmark_file_path)
        print(f"Merging {full_path} benchmark ...")
        
        data = read_csv_results_from_file(full_path)
        
        if not data.empty:
            data[column_name] = column_values[i]
            result = pd.concat([result, data], ignore_index=True)
    
    return result

def merge_and_write_benchmark_results_to_file(jmh_output_folder, jvm_identifier, 
                                            benchmark_file_paths, column_name, 
                                            column_values, output_file):
    """
    Merge and write to a single output file multiple benchmark results for different JIT results,
    corresponding to a single JVM
    Python equivalent of R's mergeAndWriteBenchmarkResultsToFile function
    """
    if len(benchmark_file_paths) != len(column_values):
        print("Error: the number of files must be equal to the number of columns")
        return None
    
    benchmark_base_path = os.path.join(jmh_output_folder, jvm_identifier)
    data = merge_benchmark_results(benchmark_base_path, benchmark_file_paths, column_name, column_values)
    
    if not data.empty:
        write_data_to_csv_file(benchmark_base_path, output_file, data)