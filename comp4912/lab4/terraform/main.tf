# Ensure to configure AWS credentail via 'aws configure' command before using this file (since provider's profie is set to default)
# To do this, first Create a user in AWS with AmazonEC2FullAccess policy and generate an Access Key for the user. The generated Access/Secret Keys are needed to run 'aws configure'.

provider "aws" {
  profile = "default"
  region = "us-west-1"
}

resource "aws_instance" "web_server" {
  ami           = "ami-07d2649d67dbe8900"
  instance_type = var.ec2_instance_type

  # Create 3 identical instances
  count = 3

  tags = {
    Name = "${var.instance_name}-${count.index}"
  }
}
