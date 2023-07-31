# modules/network/main.tf

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  # Add other necessary configurations for VPC
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  # Add other necessary configurations for private subnet
}

resource "aws_security_group" "allow_ssh" {
  name_prefix = "allow-ssh"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "SSH access from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

output "vpc_id" {
  value       = aws_vpc.main.id
  description = "ID of the created VPC"
}

output "private_subnet_id" {
  value       = aws_subnet.private.id
  description = "ID of the created private subnet"
}
