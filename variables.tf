
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

  validation {
    condition     = length(trimspace(var.region)) > 0
    error_message = "var.region must be a non-empty string"
  }
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

variable "builder_image" {
  type        = string
  description = "Builder image for the docker build step, pinned to a digest"
  default     = "gcr.io/cloud-builders/docker@sha256:f8b08c609fdc392ee6827ff3e1725e4980f7d96bde9f76f4695086405c96c147"

  validation {
    condition     = length(trimspace(var.builder_image)) > 0
    error_message = "var.builder_image must be a non-empty string"
  }
}
