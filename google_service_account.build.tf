resource "google_service_account" "build" {
  project      = var.project_id
  account_id   = var.service_account_id
  display_name = "Dedicated Cloud Build trigger service account"
}
