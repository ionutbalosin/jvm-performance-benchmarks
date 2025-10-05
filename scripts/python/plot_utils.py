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
import matplotlib.pyplot as plt
import seaborn as sns
import os
import re
from utils import read_csv_results_from_file

# Function to read the benchmark results from a CSV file and append a JVM column identifier
def read_benchmark_results_with_jvm_identifier(benchmark_file_path, identifier):
    result = read_csv_results_from_file(benchmark_file_path)
    
    if not result.empty:
        result['JvmIdentifier'] = identifier
    
    return result

# Function to concatenate all benchmark Param columns
def concatenate_benchmark_param_columns(data):
    result = []
    
    # Extract all Param columns in a data frame
    param_cols = [col for col in data.columns if col.startswith('Param')]
    
    if not param_cols:
        return [''] * len(data)
    
    params = data[param_cols]
    
    # Extract Param column names (and delete the Param prefix)
    param_names = [col.replace('Param..', '') for col in param_cols]
    
    # Concatenate all Param names:values (in a row-column fashion)
    for index, row in params.iterrows():
        concat_params = []
        for i, (name, value) in enumerate(zip(param_names, row)):
            if pd.notna(value):
                concat_params.append(f"{name}:{value}")
        
        result.append(", ".join(concat_params) if concat_params else "")
    
    return result

# Function to process the benchmark results
def clean_and_prepare_benchmark_data(data):
    if data.empty:
        return data
    
    # Delete rows containing profile stats in the Benchmark name
    data = data[~data['Benchmark'].str.contains(':·', na=False)]
    
    # Remove the package name from the Benchmark name
    data['Benchmark'] = data['Benchmark'].str.replace(r'^.+\.', '', regex=True)
    
    # Rename Error column if it exists
    error_col_pattern = r'Score.*Error.*99\.9'
    error_cols = [col for col in data.columns if re.search(error_col_pattern, col, re.IGNORECASE)]
    if error_cols:
        data = data.rename(columns={error_cols[0]: 'Error'})
    
    # Replace commas with dots for Score and Error columns
    if 'Score' in data.columns:
        data['Score'] = data['Score'].astype(str).str.replace(',', '.').astype(float)
        # Trim the Score column to 2 decimal places
        data['Score'] = data['Score'].round(2)
    
    if 'Error' in data.columns:
        data['Error'] = data['Error'].astype(str).str.replace(',', '.').astype(float)
    
    # Add a new Parameters column with concatenated Param names:values
    data['Parameters'] = concatenate_benchmark_param_columns(data)
    
    # Keep only necessary columns for plotting
    required_cols = ['Benchmark', 'Score', 'Error', 'Unit', 'JvmIdentifier', 'Parameters']
    available_cols = [col for col in required_cols if col in data.columns]
    data = data[available_cols]
    
    # Sort by Parameters and then by Benchmark columns
    if 'Parameters' in data.columns and 'Benchmark' in data.columns:
        data = data.sort_values(['Parameters', 'Benchmark'], ascending=[False, True])
    
    # Concatenate Benchmark and Parameters columns with a line break
    if 'Parameters' in data.columns and 'Benchmark' in data.columns:
        # Only add parameters if they exist and are not empty
        mask = data['Parameters'].notna() & (data['Parameters'] != '')
        data.loc[mask, 'Benchmark'] = (data.loc[mask, 'Benchmark'] + 
                                     '\n(' + data.loc[mask, 'Parameters'] + ')')
    
    return data

# Function to generate a bar chart plot
def create_benchmark_bar_chart(data, fill, fill_label, x_label, y_label, title, caption, color_palette):
    if data.empty:
        return None
    
    # Set up the plot style
    plt.style.use('default')
    fig, ax = plt.subplots(figsize=(20, max(4, len(data) * 0.8)))
    
    # Create the bar plot
    unique_jvms = data[fill].unique()
    x_pos = np.arange(len(data['Benchmark'].unique()))
    width = 0.7 / len(unique_jvms)
    
    # Create bars for each JVM
    for i, jvm in enumerate(unique_jvms):
        jvm_data = data[data[fill] == jvm]
        benchmarks = jvm_data['Benchmark'].values
        scores = jvm_data['Score'].values
        errors = jvm_data['Error'].values if 'Error' in jvm_data.columns else None
        
        # Get positions for this JVM's bars
        pos = [j + i * width for j in range(len(jvm_data))]
        
        # Get color for this JVM
        color = color_palette.get(jvm, f'C{i}')
        
        bars = ax.barh(pos, scores, width, label=jvm, color=color, alpha=0.8)
        
        # Add error bars if available
        if errors is not None and not pd.isna(errors).all():
            ax.errorbar(scores, pos, xerr=errors, fmt='none', capsize=3, alpha=0.7, color='black')
        
        # Add text labels on bars
        for j, (bar, score, benchmark) in enumerate(zip(bars, scores, benchmarks)):
            unit = jvm_data.iloc[j]['Unit'] if 'Unit' in jvm_data.columns else ''
            ax.text(score + max(scores) * 0.01, bar.get_y() + bar.get_height()/2, 
                   f'{score} {unit}', ha='left', va='center', fontsize=10)
    
    # Customize the plot
    ax.set_ylabel(x_label)
    ax.set_xlabel(y_label)
    ax.set_title(title, fontsize=16, pad=20)
    ax.legend(title=fill_label, loc='lower right')
    
    # Set y-tick labels to benchmark names
    unique_benchmarks = data['Benchmark'].unique()
    ax.set_yticks([i + width * (len(unique_jvms) - 1) / 2 for i in range(len(unique_benchmarks))])
    ax.set_yticklabels(unique_benchmarks)
    
    # Add grid
    ax.grid(True, alpha=0.3, axis='x')
    ax.set_axisbelow(True)
    
    # Add caption
    fig.text(1.0, 0.02, caption, ha='right', va='bottom', fontsize=10)
    
    plt.tight_layout()
    return fig

# Function to save the plot to an SVG output file
def save_benchmark_bar_chart_to_svg(data, plot, path, benchmark_file_basename):
    if not data.empty and plot is not None:
        # Create the path if it does not exist
        if not os.path.exists(path):
            os.makedirs(path)
        
        # Set the height proportional to the number of rows plus some minimum
        height = max(8, len(data) * 0.8 + 2)
        
        # Update figure size
        plot.set_size_inches(20, height)
        
        # Save the plot
        output_path = os.path.join(path, f"{benchmark_file_basename}.svg")
        plot.savefig(output_path, format='svg', dpi=320, bbox_inches='tight')
        plt.close(plot)