resource "google_compute_network" "private" {
  name                    = "cloudbuild-private"
  auto_create_subnetworks = false
}