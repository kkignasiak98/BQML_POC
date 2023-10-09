resource "google_service_account" "dbt_service_account" {
  account_id   = "dbt-service-account"
  display_name = "dbt-service-account"
  project      = var.project_ID
}

resource "google_project_iam_member" "bigquery_editor" {
  project = var.project_ID
  role    = "roles/bigquery.dataEditor"
  member  = "serviceAccount:${google_service_account.dbt_service_account.email}"
}

resource "google_project_iam_member" "bigquery_job_user" {
  project = var.project_ID
  role    = "roles/bigquery.jobUser"
  member  = "serviceAccount:${google_service_account.dbt_service_account.email}"
}