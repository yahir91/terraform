variable "instance_type" {
    default= "t3.micro"
    type= string
}

variable "aws_name" {
  default = ["Jorge", "Yahir", "Carlos"]
  type= list(string)
}

variable "is_test" {
    default = false
    type = bool
}