locals {
  bucket_name = "default-credit-clients-2023"
}

resource "google_storage_bucket" "default-credit-clients" {
  name          = local.bucket_name
  location      = var.resource_location
  force_destroy = true
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

resource "google_storage_bucket" "terraform_state_bucket" {
  name          = "terraform_state_bucket_bqml_sandbox"
  location      = var.resource_location
  force_destroy = false
  versioning {
    enabled = true
  }
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}

