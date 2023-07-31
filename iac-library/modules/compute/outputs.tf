# modules/compute/outputs.tf

output "instance_id" {
  value       = aws_instance.compute_instance.id
  description = "ID of the created EC2 instance"
}

output "public_ip" {
  value       = aws_instance.compute_instance.public_ip
  description = "Public IP address of the EC2 instance"
}
