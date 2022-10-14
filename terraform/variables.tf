# ------------------------------------------------------------------------------
# Optional parameters
#
# These parameters have reasonable defaults.
# ------------------------------------------------------------------------------

variable "aws_region" {
  type        = string
  description = "The AWS region to deploy into (e.g. us-east-1)."
  default     = "us-east-1"
}

variable "production_bucket_name" {
  type        = string
  description = "The name of the S3 bucket where the production Assessor Workbench tarball lives."
  default     = "cisa-cool-third-party-production"
}

variable "production_object" {
  type        = string
  description = "The Assessor Workbench tarball object inside the production bucket."
  default     = "assessor-workbench-python-v1.1.1_test.tgz"
}

variable "staging_bucket_name" {
  type        = string
  description = "The name of the S3 bucket where the staging Assessor Workbench tarball lives."
  default     = "cisa-cool-third-party-staging"
}

variable "staging_object" {
  type        = string
  description = "The Assessor Workbench tarball object inside the staging bucket."
  default     = "assessor-workbench-python-v1.1.1_test.tgz"
}

variable "tags" {
  type        = map(string)
  description = "Tags to apply to all AWS resources created"

  default = {
    Team        = "VM Fusion - Development"
    Application = "ansible-role-assessor-workbench testing"
  }
}
