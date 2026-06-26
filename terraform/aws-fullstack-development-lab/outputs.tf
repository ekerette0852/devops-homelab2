output "instance_id" {
  description = "EC2 Instance ID"
  value       = aws_instance.web.id
}

output "public_ip" {
  description = "EC2 Public IP Address"
  value       = aws_instance.web.public_ip
}

output "website_url" {
  description = "Application URL"
  value       = "http://${aws_instance.web.public_ip}"
}
