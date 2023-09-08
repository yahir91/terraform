provider "aws" {
  region     = "us-east-1"
}

# resource "aws_instance" "instance-1" {
#    ami = "ami-082b5a644766e0e6f"
#    instance_type = var.instance_type
#    count = 3
# }

resource "aws_iam_user" "name" {
  name = var.aws_name[count.index]
  count = 3
}