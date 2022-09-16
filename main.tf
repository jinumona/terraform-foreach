# vim main.tf

provider "aws" {
    
  region = "ap-south-1"
}


variable "iam_users" {
  
  type    = list
  default = [ "aneesh" , "delvin" , "philip" , "vignesh"]
}


resource "aws_iam_user" "user" {
    
  for_each = toset(var.iam_users)
  name = each.value
}
