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
import sys
import importlib
import subprocess

def load_library(name):
    """
    Function to load a library and install if not available
    Python equivalent of R's loadLibrary function
    """
    try:
        importlib.import_module(name)
    except ImportError:
        print(f"Installing {name}...")
        subprocess.check_call([sys.executable, "-m", "pip", "install", name])
        importlib.import_module(name)

# Load necessary libraries
required_libraries = ['pandas', 'numpy', 'matplotlib', 'seaborn']
for lib in required_libraries:
    load_library(lib)

def read_csv_results_from_file(file_path):
    """
    Read the CSV results from file
    Python equivalent of R's readCsvResultsFromFile function
    """
    result = pd.DataFrame()
    
    try:
        if os.path.exists(file_path):
            result = pd.read_csv(file_path)
        else:
            print(f"Warning: File {file_path} not found. Skipping.")
    except Exception as e:
        print(f"Cannot read from {file_path}. File skipped. Error: {e}")
    
    return result

def write_data_to_csv_file(path, file, data):
    """
    Write the CSV results to file
    Python equivalent of R's writeDataToCsvFile function
    """
    try:
        if not os.path.exists(path):
            os.makedirs(path)
        
        file_path = os.path.join(path, file)
        data.to_csv(file_path, index=False)
        
    except Exception as e:
        print(f"Error: {e}")
        print(f"Cannot write to {os.path.join(path, file)}. File skipped.")

def clean_and_prepare_benchmark_data(data):
    """
    Clean and prepare benchmark data for plotting
    """
    if data.empty:
        return data
    
    # Remove any rows with NaN values in critical columns
    data = data.dropna(subset=['Score'])
    
    # Ensure numeric columns are properly typed
    numeric_columns = ['Score', 'Score Error (99.9%)']
    for col in numeric_columns:
        if col in data.columns:
            data[col] = pd.to_numeric(data[col], errors='coerce')
    
    return data

def calculate_geometric_mean(values):
    """
    Calculate geometric mean of a series of values
    """
    values = np.array(values)
    values = values[values > 0]  # Remove non-positive values
    if len(values) == 0:
        return 0
    return np.exp(np.mean(np.log(values)))