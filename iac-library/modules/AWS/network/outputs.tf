# modules/network/outputs.tf

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "ID of the created VPC"
}

output "private_subnet_id" {
  value       = aws_subnet.private.id
  description = "ID of the created private subnet"
}
