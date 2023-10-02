# Data Loading and Transformation

This subfolder contains scripts and resources for loading and preprocessing data for the BigQuery ML Proof of Concept project. Data plays a crucial role in machine learning, and this README provides an overview of the data loading and preprocessing processes.

## Files

### 1. `load_data`

The `load_data` script is responsible for loading data into Google BigQuery. It loads the file from the data folder to Google Cloud Storage and then creates a BigQuery table.

### 2. `data_prep`

The `data_prep` script is responsible for preprocessing the data. It consists of renaming the columns, making the dataset more balanced, and casting the subset of columns to enable automatic one-hot encoding.
