# HLD_GCP_211: worker pool has no external IP, routes via peered VPC network
resource "google_cloudbuild_worker_pool" "main" {
  name     = "private-pool"
  project  = var.project_id
  location = var.region

  worker_config {
    disk_size_gb   = 100
    machine_type   = "e2-medium"
    no_external_ip = true
  }

  network_config {
    peered_network = var.peered_network
  }
}