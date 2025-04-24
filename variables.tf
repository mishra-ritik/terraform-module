variable "aws_region" {
  description = "AWS region to deploy the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name of the project for resource naming"
  type        = string
  default     = "terraform-demo"
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}

variable "availability_zones" {
  description = "Availability zones for subnets"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
  default     = "ami-0c7217cdde317cfec"  # Ubuntu 22.04 LTS AMI
}

variable "instance_types" {
  description = "Map of environment to instance type for application servers"
  type        = map(string)
  default     = {
    dev     = "t2.micro"
    staging = "t2.small"
    prod    = "t2.medium"
  }
}

variable "jenkins_instance_types" {
  description = "Map of environment to instance type for Jenkins server"
  type        = map(string)
  default     = {
    dev     = "t2.medium"
    staging = "t2.large"
    prod    = "t2.xlarge"
  }
}

variable "key_name" {
  description = "Name of the SSH key pair to use for EC2 instances"
  type        = string
  default     = "ritik_1610"
}

variable "instance_count" {
  description = "Number of application instances to create"
  type        = number
  default     = 2
}