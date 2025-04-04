output "instance_id" {
  description = "value of the instance ID"
  value = aws_instance.web_server[*].id
}

output "instance_public_ip" {
  description = "value of the instance public IP"
  value = aws_instance.web_server[*].public_ip
}
