
variable "vpn_ip" {
    default = "116.50.30.10/32"
    type = string
}

variable "elb_nam" {
  type= string
}

variable "ez" {
  type= list(string)
}

variable "ez" {
  type= map
  default = {
    us-east-1= "micro"
    us-west-1 = "medium"
  }
}

resource "aws" "name" {
  name= var.ez[us-east-1]
}