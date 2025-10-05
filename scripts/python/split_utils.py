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
from utils import read_csv_results_from_file, write_data_to_csv_file

# Function to split benchmark results from a single data frame based on a specified column and values
def split_benchmark_results(path, benchmark_file, column_name, column_values):
    result = pd.DataFrame()
    
    benchmark_file_path = os.path.join(path, benchmark_file)
    print(f"Splitting {benchmark_file_path} benchmark ...")
    data = read_csv_results_from_file(benchmark_file_path)
    
    # Check if the specified column exists in the data frame
    if not data.empty and column_name in data.columns:
        result = data[data[column_name].isin(column_values)]
    
    return result

# Function to split and write benchmark results to an output file
def split_and_write_benchmark_results_to_file(jmh_output_folder, jvm_identifier, 
                                            benchmark_file, column_name, 
                                            column_values, output_file):
    benchmark_base_path = os.path.join(jmh_output_folder, jvm_identifier)
    data = split_benchmark_results(benchmark_base_path, benchmark_file, column_name, column_values)
    
    if not data.empty:
        write_data_to_csv_file(benchmark_base_path, output_file, data)