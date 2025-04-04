variable "instance_name" {
  description = "value for the name tag of the EC2 instance"
  type = string
  default = "MyNewInstance"
}

variable "ec2_instance_type" {
  description = "AWS EC2 instance type"
  type = string
  default = "t2.micro"
}
