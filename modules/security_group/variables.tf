variable "project_name" {
  type        = string
  description = "Project name for resource naming"
}

variable "environment" {
  type        = string
  description = "Environment (dev, staging, prod)"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
}
