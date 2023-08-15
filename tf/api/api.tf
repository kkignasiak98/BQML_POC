
resource "google_project_service" "enabled_services" {
  project = "your-project-id"  

  for_each = toset(var.api_list)

  service = each.key
}