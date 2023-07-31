# modules/compute/main.tf

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

resource "aws_instance" "compute_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  # Add other necessary configurations like key_name, security_groups, etc.
}

output "instance_id" {
  value       = aws_instance.compute_instance.id
  description = "ID of the created EC2 instance"
}

output "public_ip" {
  value       = aws_instance.compute_instance.public_ip
  description = "Public IP address of the EC2 instance"
}
