variable project_ID {
  type        = string
  default     = ""
  description = "the GCP project"
}

variable bq_data_location {
  type        = string
  default     = "UE"
  description = "The location for BigQuery data"
}