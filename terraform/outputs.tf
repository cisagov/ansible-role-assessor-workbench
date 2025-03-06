output "production_policy" {
  value       = module.production_bucket_access.policy
  description = "The IAM policy that can read the specified objects from the specified S3 production bucket."
}

<<<<<<< HEAD
output "production_role" {
  value       = module.production_bucket_access.role
  description = "The IAM role that can read the specified objects from the specified S3 production bucket."
}

output "staging_policy" {
  value       = module.staging_bucket_access.policy
  description = "The IAM policy that can read the specified objects from the specified S3 staging bucket."
}

output "staging_role" {
  value       = module.staging_bucket_access.role
  description = "The IAM role that can read the specified objects from the specified S3 staging bucket."
=======
output "role" {
  value       = module.user.role
  description = "The IAM role that the CI user can assume to read SSM parameters in the Images account."
>>>>>>> 8cc1712a5cae219f786b8e03c4ff6941296f89c1
}

output "user" {
  value       = aws_iam_user.user
  description = "The IAM user being created to test the cisagov/ansible-role-assessor-workbench Ansible role."
}

output "user_access_key" {
  value       = aws_iam_access_key.key
  description = "The access key for the IAM user being created to test the cisagov/ansible-role-assessor-workbench Ansible role."
  sensitive   = true
}
