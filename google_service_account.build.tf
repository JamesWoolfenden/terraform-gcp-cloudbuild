resource "google_service_account" "build" {
  project      = var.project_id
  account_id   = "cloudbuild-trigger"
  display_name = "Dedicated Cloud Build trigger service account"
}
