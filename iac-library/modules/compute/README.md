Sure! Below are the sample `README.md` files for the `compute` and `network` modules:

**README.md for Compute Module: modules/compute/README.md**

```
# Compute Module

This Terraform module provides resources for creating compute instances in AWS, such as EC2 instances or Auto Scaling Groups.

## Usage

```hcl
module "compute_instance" {
  source     = "./modules/compute"
  instance_type = "t2.micro"
  ami_id     = "ami-0123456789abcdef0"
}
```

## Inputs

| Name          | Description                           | Type   | Default |
|---------------|---------------------------------------|--------|---------|
| instance_type | EC2 instance type                     | string | t2.micro|
| ami_id        | AMI ID for the EC2 instance           | string | -       |

## Outputs

| Name         | Description                           |
|--------------|---------------------------------------|
| instance_id  | ID of the created EC2 instance        |
| public_ip    | Public IP address of the EC2 instance |
