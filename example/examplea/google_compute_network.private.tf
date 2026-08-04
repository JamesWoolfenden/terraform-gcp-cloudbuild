# holden:ignore:HLD_GCP_303: its sample for example
# holden:ignore:HLD_GCP_094: its sample for example
# holden:ignore:HLD_GCP_093: its sample for example
resource "google_compute_network" "private" {
  name                    = "cloudbuild-private"
  auto_create_subnetworks = false
}