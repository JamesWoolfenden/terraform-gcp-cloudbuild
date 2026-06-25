
variable "project_id" {
  type        = string
  description = "Project that owns the Cloud Build trigger and worker pool"

  validation {
    condition     = length(trimspace(var.project_id)) > 0
    error_message = "var.project_id must be a non-empty string"
  }
}

variable "region" {
  type        = string
  description = "Region for the private worker pool"
  default     = "europe-west2"
}

variable "repo_owner" {
  type        = string
  description = "GitHub owner of the source repository"

  validation {
    condition     = length(trimspace(var.repo_owner)) > 0
    error_message = "var.repo_owner must be a non-empty string"
  }
}

variable "repo_name" {
  type        = string
  description = "GitHub repository name to trigger builds from"

  validation {
    condition     = length(trimspace(var.repo_name)) > 0
    error_message = "var.repo_name must be a non-empty string"
  }
}

variable "peered_network" {
  type        = string
  description = "Self link of the VPC network peered to the private worker pool"

  validation {
    condition     = length(trimspace(var.peered_network)) > 0
    error_message = "var.peered_network must be a non-empty string"
  }
}