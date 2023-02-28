
variable "environment" {
  default = "default"
}
locals {
  iam_user_extention = "iam_user"
}
resource "aws_iam_user" "my_iam_user" {
  name = "${local.iam_user_extention}_${var.environment}"
}


