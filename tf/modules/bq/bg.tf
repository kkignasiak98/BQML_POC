resource "google_bigquery_dataset" "bq_ml_sandbox" {
  dataset_id                 = "BQ_ML_ID"
  friendly_name              = "BigQuery ML sandbox"
  description                = "The datasets for experimenting with BQ ML"
  location                   =  var.bq_data_location
  #default_table_expiration_ms = "3600000" The table should be persistent

}