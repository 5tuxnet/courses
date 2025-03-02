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
