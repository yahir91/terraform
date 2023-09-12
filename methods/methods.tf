provider "aws" {
  region     = "us-east-1"
}

locals {
    count = var.is_test ? 1 : 0
}

resource "aws_instance" "dev" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = var.instance_type
   count = local.count
}

resource "aws_instance" "prod" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = var.instance_type
   count = local.count
}

resource "aws_iam_user" "name" {
  name = var.aws_name[count.index]
  count = 3
}