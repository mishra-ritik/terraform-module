# modules/ec2/variables.tf

variable "project_name" {
  description = "Terraform Jenkins"
  type        = string
  default     = "ritik-tf-jenkins"
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for application servers"
  type = map(string)
  default = {
    dev     = "t2.micro"
    staging = "t2.small"
    prod    = "t2.medium"
  }
}

variable "jenkins_instance_type" {
  description = "EC2 instance type for Jenkins server"
  type = map(string)
  default = {
    dev     = "t2.medium"
    staging = "t2.large"
    prod    = "t2.xlarge"
  }
}

variable "key_name" {
  description = "Name of the SSH key pair to use for EC2 instances"
  type        = string
}

variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "public_subnet_ids" {
  description = "IDs of the public subnets"
  type        = list(string)
}

variable "private_subnet_ids" {
  description = "IDs of the private subnets"
  type        = list(string)
}
