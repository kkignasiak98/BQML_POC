terraform {
  required_version = ">= 1.0.0"
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }

  #backend "gcs" {
   # bucket  = "terraform_state_bucket_bqml_sandbox"
   # prefix  = "terraform/state"
  # }

}
  provider "google" {
  project = var.project_ID
  region  = var.resource_location
}
