output "aws_instance_public_dns" {
  value       = "http://${aws_lb.nginx.dns_name}"
  description = "Public DNS for EC2 instance"
}
