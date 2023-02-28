#MAP CONCEPT IN TERRAFORM
#in map we store data using key-value pairs

#Add users based on names with conutry name as tags 

variable "users" {
  default = {
    sanjay : "india",
    ram : "bharat",
    somya : "us"
  }
}


resource "aws_iam_user" "iam_users" {

  for_each = var.users
  name     = each.key
  tags = {
    country = each.value
  }
}