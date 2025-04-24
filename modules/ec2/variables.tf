variable "project_name" {
  type        = string
  description = "Project name for resource naming"
}

variable "environment" {
  type        = string
  description = "Environment (dev, staging, prod)"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2 instances"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type for application servers"
}

variable "jenkins_instance_type" {
  type        = string
  description = "EC2 instance type for Jenkins server"
}

variable "key_name" {
  type        = string
  description = "Name of the SSH key pair to use"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}

variable "public_subnet_id" {
  type        = string
  description = "Public subnet ID"
}

variable "private_subnet_id" {
  type        = string
  description = "Private subnet ID"
}

variable "instance_count" {
  type        = number
  description = "Number of application instances"
}

variable "tags" {
  description = "Common tags to be used across resources"
  type        = map(string)
}
