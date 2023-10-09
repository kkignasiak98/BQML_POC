# Terraform Infrastructure for Google Cloud

This subfolder contains Terraform configurations for provisioning the required infrastructure in Google Cloud to support the BigQuery ML Proof of Concept project. The infrastructure setup includes creating APIs, configuring Cloud Storage, and setting up Google BigQuery resources. This README provides an overview of the Terraform modules and how to use them.

## Main Module Structure

The main module, typically located in the root directory of this project, contains the primary Terraform configurations. It includes the following files:

- **`main.tf`**: This file contains the main Terraform configurations.

- **`providers.tf`**: In this file, you specify the provider configurations and remote state location.

- **`variables.tf`**: Here, you define input variables that can be customized when running Terraform.

- **`var.auto.tfvars`**: This file is used to set specific values for the input variables defined in `variables.tf`. It allows you to provide values without modifying the main Terraform configurations. The values set in this file are also passed to the resources in modules.

## Terraform Modules

The Terraform configurations in this subfolder are organized into three separate modules to manage different aspects of the infrastructure:

### 1. **APIs Module (`/api`)**

The APIs module is responsible for enabling and configuring the necessary Google Cloud APIs required for the project. These APIs may include services like Google Cloud Storage, BigQuery, and any other services that the project relies on.

### 2. **Cloud Storage Module (`/cloud_storage`)**

The Cloud Storage module is responsible for setting up and configuring Google Cloud Storage buckets and objects. It ensures that the project has the required storage resources for data ingestion and processing.

### 3. **BigQuery Module (`/bq`)**

The BigQuery module is responsible for defining and configuring Google BigQuery resources, such as datasets and tables. It allows for structured data storage and serves as the foundation for running machine learning tasks with BigQuery ML.

### 4. **Service Account Module (`/service_account`)**

The Module is responsible for defining service account used by dbt.

## Module Structure

Each module within this project follows a consistent structure. It contains the following files:

- **main file**: This file contains the main Terraform configurations specific to the module's purpose. It defines resources, dependencies, and any module-specific configurations. The name of the file is based on the name of the module.

- **`variables.tf`**: In this file, you define input variables that can be customized when using the module. The values for this variables are passed from the main module.

## Usage

To use these Terraform modules to set up your Google Cloud infrastructure, follow these steps:

1. **Install Terraform**: If you haven't already, install Terraform on your local machine by following the instructions in the [Terraform Installation Guide](https://learn.hashicorp.com/tutorials/terraform/install-cli).

2. **Google Cloud Authentication**:

   - Ensure that you have the Google Cloud SDK installed (`gcloud` command-line tool).
   - Authenticate to Google Cloud using your Google Cloud credentials. You can do this by running:

     ```sh
     gcloud auth login
     ```

     Authenticate terraform to perform changes in Google Cloud Infrastructure:

     ```sh
     gcloud auth application-default login


3. **Initialize and Apply Terraform**:

   - Initialize Terraform in the module directory by running:

     ```sh
     terraform init
     ```

   - Apply the Terraform configuration to create the infrastructure:

     ```sh
     terraform apply
     ```

4. **Review and Confirm**:

   - Terraform will display a plan showing the changes that will be applied. Review the plan and confirm by entering `yes` when prompted.

5. **Infrastructure Creation**:

   - Terraform will provision the specified infrastructure resources in your Google Cloud project.

6. **Destroy (Optional)**:

   - To tear down the infrastructure when no longer needed, you can use:

     ```sh
     terraform destroy
     ```

## Prerequisites

Before using these Terraform modules, ensure that you have the following prerequisites:

- Google Cloud Platform (GCP) account with billing enabled.
- Google Cloud SDK installed and authenticated.
- Terraform installed on your local machine.