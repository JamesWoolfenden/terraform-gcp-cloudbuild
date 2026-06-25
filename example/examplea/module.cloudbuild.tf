# holden:ignore:HLD_TF_026 — examples intentionally use ../../ to reference the local module root
module "cloudbuild" {
  source         = "../../"
  project_id     = "pike-477416"
  repo_owner     = "JamesWoolfenden"
  repo_name      = "terraform-gcp-cloudbuild"
  peered_network = google_compute_network.private.id
}