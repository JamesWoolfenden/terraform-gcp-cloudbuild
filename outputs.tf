output "trigger_id" {
  value       = google_cloudbuild_trigger.main.id
  description = "ID of the Cloud Build trigger"
}

output "worker_pool_id" {
  value       = google_cloudbuild_worker_pool.main.id
  description = "ID of the private worker pool"
}

output "service_account_email" {
  value       = google_service_account.build.email
  description = "Email of the dedicated build service account"
}