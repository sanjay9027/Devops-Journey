
#List  concepts in Terraform
#Add multiple users with custom names using Terraform Variables concept

variable "user_name" {
  default = ["ranga", "swami", "muna"]
}


resource "aws_iam_user" "my_iam_user" {
  #count = length(var.user_name)
  #name  = var.user_name[count.index]

  #Use for_each loop for optimized results
  for_each = toset(var.user_name)
  name     = each.value
}