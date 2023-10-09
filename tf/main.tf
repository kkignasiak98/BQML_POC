
module "api" {
  source ="./modules/api"
  project_ID = var.project_ID
  api_list =  var.api_list
}

module "gcs" {
  source ="./modules/cloud_storage"
  project_ID = var.project_ID
  resource_location = var.resource_location
}

module "bq"{
  source = "./modules/bq"
  project_ID = var.project_ID
  bq_data_location = var.bq_data_location
}


module "service_account"{
  source = "./modules/service_account"
  project_ID = var.project_ID
}