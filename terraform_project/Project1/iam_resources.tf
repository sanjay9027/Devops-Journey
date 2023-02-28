#Create multiple IAM User

resource "aws_iam_user" "my_iam_user" {
  count = 2
  name  = "sanjay_das_${count.index}"
}

#Create single IAM User
resource "aws_iam_user" "iam_user" {
  name = "sanjay_das"
}

#Terraform Variables
variable "iam_user_name_prefix"{
    type=string
    default= "sanjay"
}
resource "aws_iam_user" "my_iam_user101" {
  count = 2
  name  = "${var.iam_user_name_prefix}_${count.index}"
}