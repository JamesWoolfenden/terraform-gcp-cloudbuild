# HLD_GCP_191: dedicated service_account, not the default Cloud Build SA
# HLD_GCP_192: comment_control restricted to external contributors only
resource "google_cloudbuild_trigger" "main" {
  project         = var.project_id
  name            = "pr-build"
  service_account = google_service_account.build.id

  github {
    owner = var.repo_owner
    name  = var.repo_name

    pull_request {
      branch          = "^main$"
      comment_control = "COMMENTS_ENABLED_FOR_EXTERNAL_CONTRIBUTORS_ONLY"
    }
  }

  build {
    step {
      name = "gcr.io/cloud-builders/docker"
      args = ["build", "-t", "gcr.io/${var.project_id}/app", "."]
    }
  }
}