# terraform-gcp-cloudbuild

Terraform module for Cloud Build. Exercises holden's `policies/gcp/cloud-build` policy set.


<!-- BEGINNING OF PRE-COMMIT-PIKE DOCS HOOK -->
The Terraform resource required is:

```golang
# apply role
resource "google_project_iam_custom_role" "terraform_pike" {
  project     = "pike-477416"
  role_id     = "terraform_pike"
  title       = "terraform_pike"
  description = "A user with least privileges"
  permissions = [
    "cloudbuild.builds.create",
    "cloudbuild.builds.get",
    "cloudbuild.builds.update",
    "cloudbuild.workerpools.create",
    "cloudbuild.workerpools.delete",
    "cloudbuild.workerpools.get",
    "cloudbuild.workerpools.update",
    "iam.serviceAccounts.create",
    "iam.serviceAccounts.delete",
    "iam.serviceAccounts.get",
    "iam.serviceAccounts.update"
  ]
}

# plan role
resource "google_project_iam_custom_role" "terraform_pike_plan" {
  project     = "pike-477416"
  role_id     = "terraform_pike_plan"
  title       = "terraform_pike_plan"
  description = "A user with least privileges"
  permissions = [
    "cloudbuild.builds.get",
    "cloudbuild.workerpools.get",
    "iam.serviceAccounts.get"
  ]
}


```
<!-- END OF PRE-COMMIT-PIKE DOCS HOOK -->
