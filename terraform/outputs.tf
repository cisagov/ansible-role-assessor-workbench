<<<<<<< HEAD
output "production_policy" {
  value       = module.production_bucket_access.policy
  description = "The IAM policy that can read the specified objects from the specified S3 production bucket."
=======
output "access_key" {
  description = "The IAM access key associated with the CI IAM user created by this module."
  sensitive   = true
  value       = module.user.access_key
>>>>>>> 26819a903c52b39dce7b3673f54402d3d281fba3
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
  description = "The IAM role that the CI user can assume to read SSM parameters in the Images account."
<<<<<<< HEAD
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
=======
  value       = module.user.role
}

output "user" {
  description = "The CI IAM user created by this module."
  value       = module.user.user
>>>>>>> 26819a903c52b39dce7b3673f54402d3d281fba3
}
