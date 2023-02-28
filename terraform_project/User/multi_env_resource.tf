#Script to store state file in Remote Backend S3 bucket

#variable "application_name" {
#  default = "RemoteBackend"
#}
#variable "project_name" {
#  default = "User"
#}
#variable "environment_name" {
#  default = "dev"
#}
terraform {
  backend "s3" {
    bucket = "dev-app-backend-state-sanjay9027"
    #key  will contain "application-project-environment-additional_name"
    key            = "RemoteBackend-User-dev-state-backend"
    region         = "us-east-1"
    dynamodb_table = "dev_app_locks"
    encrypt        = true
  }
}

#Script to add or update resource starts here

resource "aws_iam_user" "my_iam_user" {
  name = "${terraform.workspace}_user"
}
