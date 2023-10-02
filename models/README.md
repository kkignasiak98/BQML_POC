# Models

This subfolder contains resources and scripts related to machine learning models for the BigQuery ML Proof of Concept project. Models are a fundamental component of machine learning, and this README provides an overview of the model-related files and scripts.

## Files and subdirectories

### 1. **models**

The `models` file contains machine learning models created using BigQuery ML. These models are the result of training on the project's dataset and can be used for making predictions or further analysis. 

### 2. **importing_and_exporting_models**

The `importing_and_exporting_models` file provides scripts and resources for importing and exporting machine learning models in BigQuery ML. It demonstrates how to save trained models and later import them into other environments for prediction, analysis, or integration with other tools.

Usage:

- To export a model from BigQuery as a Tensorflow model.
- To export a model into another environment, such as Vertex AI.
- To import a deep learning model into BigQuery ML.

### 3. **Training Deep Learning Models (AutoKeras Example)**

The `keras_model` contains a example of deep learning model train using the AutoKeras library. It is used as a example for importing the models into BigQuery in `importing_and_exporting_models`.

### 3. auto_keras_classifier and structured_data_classifier**

This subfolders contains the saved models from `keras_model`.
