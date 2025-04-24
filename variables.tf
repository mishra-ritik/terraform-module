variable "aws_region" {
  description = "AWS region to deploy the infrastructure"
  type        = string
}

variable "project_name" {
  description = "Name of the project for resource naming"
  type        = string
}

variable "environment" {
  description = "Environment (dev, staging, prod)"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for the public subnets"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for the private subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "Availability zones for subnets"
  type        = list(string)
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_types" {
  description = "Map of environment to instance type for application servers"
  type        = map(string)
}

variable "jenkins_instance_types" {
  description = "Map of environment to instance type for Jenkins server"
  type        = map(string)
}

variable "key_name" {
  description = "Name of the SSH key pair to use for EC2 instances"
  type        = string
}

variable "instance_count" {
  description = "Number of application instances to create"
  type        = number
}

variable "tags" {
  description = "Common tags to be used across resources"
  type        = map(string)
}