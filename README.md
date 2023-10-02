# BigQuery ML Proof of Concept

This repository contains a proof of concept for using BigQuery ML to create machine learning models within Google BigQuery. BigQuery ML is a powerful tool for performing machine learning tasks directly within Google BigQuery.

## What is BigQuery ML?

BigQuery ML is a machine learning capability provided by Google BigQuery, a fully-managed, serverless, and highly scalable data warehouse. BigQuery ML allows you to build and deploy machine learning models using SQL queries without the need for complex data movement or specialized machine learning tools. You can create, evaluate, and make predictions with machine learning models directly within BigQuery, making it a seamless part of your data analytics workflow.

## Advantages of BigQuery ML

- **Integration**: BigQuery ML is tightly integrated with Google BigQuery, which means you can work with your data and build machine learning models in the same environment, simplifying your workflow.

- **SQL-Based**: You can create machine learning models using familiar SQL syntax, making it accessible to data analysts and SQL developers without extensive machine learning expertise.

- **Scalability**: BigQuery ML leverages the scalability of BigQuery, allowing you to work with large datasets and train complex models with ease.

- **Serverless**: You don't need to manage infrastructure or worry about provisioning resources; BigQuery ML is serverless, so you can focus on your data and models.

- **Real-Time Predictions**: You can make real-time predictions using your trained models directly within BigQuery, which is valuable for applications that require low-latency responses.

## Data Source

The dataset used in this project is sourced from Kaggle, a popular platform for data science competitions and datasets. You can find the original dataset on Kaggle at [link to Kaggle dataset](https://www.kaggle.com/datasets/uciml/default-of-credit-card-clients-dataset).

## Repository Structure

- `/tf`: Contains Terraform configurations for setting up the Google Cloud infrastructure required for this project.

- `/data`: Contains sample datasets used for training machine learning models.
- `/data_prep`: Contains scripts used to load the data into the BigQuery and prepare it for modeling.
- `/models`: Includes Jupyter notebooks with code used to train the models and also export/import them.
- `/eda`: Contains a Jupyter notebook with a simple exploratory data analysis.
- `/.venv`: Includes virtual python  environment created with poetry.

## Getting Started

To get started with this proof of concept, follow these steps:

1. **Set up Google Cloud Project**: Use the Terraform configurations in the `/tf` directory to create the necessary Google Cloud resources. Make sure you have the Google Cloud SDK installed and authenticated.

2. **Load and Process Data**: Use the data loading and preprocessing scripts in the `/data_prep` directory to load and prepare your data within BigQuery.

3. **Explore Models**: Refer to the Jupyter notebooks in the `/models` directory to explore and experiment with different machine learning models available in BigQuery ML.


## Prerequisites

Before using this proof of concept, make sure you have the following prerequisites:

- Google Cloud Platform (GCP) account with billing enabled.
- Google Cloud SDK installed and authenticated.
- Terraform installed on your local machine.
- Python 3 installed on your local device.


## Setting Up the Python Environment

This project uses [Poetry](https://python-poetry.org/) for managing the Python environment. To set up the Python environment, follow these steps:

1. Install the poetry package

```
pip install poetry==1.6.1
```

2. Create a new virtual environment

```
bash python_set_up.sh
```

3. Install the necessary packages

```
bash python_add_dependencies.sh
```
If you want to remote the virtual environment just run
```
bash python_remove_virtual_env.sh
```

## Documentation

For detailed information on setting up, using, and customizing this proof of concept, refer to the documentation in README.md files located in the subfolders.

## Acknowledgments

- Special thanks to the Google Cloud Platform team for providing an excellent platform for machine learning with BigQuery.

Happy BigQuery ML modeling!


