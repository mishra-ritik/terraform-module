variable "project_name" {
  type        = string
  description = "Project name for resource naming"
}

variable "environment" {
  type        = string
  description = "Environment (dev, staging, prod)"
}

variable "availability_zone" {
  type        = string
  description = "Availability zone for the EBS volume"
}

variable "size" {
  type        = number
  description = "Size of the EBS volume"
}

variable "volume_type" {
  type        = string
  description = "Type of the E"
}
