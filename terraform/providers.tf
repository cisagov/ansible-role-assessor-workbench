# This is the "default" provider that is used assume the roles in the
# other providers.  It uses the credentials of the caller.  It is also
# used to assume the roles required to access remote state in the
# Terraform backend.
provider "aws" {
  default_tags {
    tags = var.tags
  }
  region = var.aws_region
}

<<<<<<< HEAD
# The provider used to create a role that can read the Assessor Workbench tarball
# from a production S3 bucket
provider "aws" {
  alias = "images_production"
  assume_role {
    role_arn     = data.terraform_remote_state.images_production.outputs.provisionthirdpartybucketreadroles_role.arn
=======
# The provider used to create the role that can be assumed to do
# everything the CI user needs to do in the Images account.
provider "aws" {
  alias = "images_provisionaccount"
  assume_role {
    role_arn     = data.terraform_remote_state.images.outputs.provisionaccount_role.arn
>>>>>>> 8cc1712a5cae219f786b8e03c4ff6941296f89c1
    session_name = local.caller_user_name
  }
  default_tags {
    tags = var.tags
  }
  region = var.aws_region
}

<<<<<<< HEAD
# The provider used to create a role that can read the Assessor Workbench tarball
# from a staging S3 bucket
provider "aws" {
  alias = "images_staging"
  assume_role {
    role_arn     = data.terraform_remote_state.images_staging.outputs.provisionthirdpartybucketreadroles_role.arn
=======
# The provider used to create policies and roles that can read
# parameters from AWS SSM Parameter Store in the Images account.
provider "aws" {
  alias = "images_ssm"
  assume_role {
    role_arn     = data.terraform_remote_state.images_ssm.outputs.provisionparameterstorereadroles_role.arn
>>>>>>> 8cc1712a5cae219f786b8e03c4ff6941296f89c1
    session_name = local.caller_user_name
  }
  default_tags {
    tags = var.tags
  }
  region = var.aws_region
}

# The provider used to create the test user
provider "aws" {
  alias = "users"
  assume_role {
    role_arn     = data.terraform_remote_state.users.outputs.provisionaccount_role.arn
    session_name = local.caller_user_name
  }
  default_tags {
    tags = var.tags
  }
  region = var.aws_region
}
