terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# Call VPC module
module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr             = var.vpc_cidr
  project_name         = var.project_name
  environment          = var.environment
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones   = var.availability_zones

  tags = var.tags
}

# Call EC2 module
module "ec2" {
  source                 = "./modules/ec2"
  project_name           = var.project_name
  environment            = var.environment
  ami_id                 = var.ami_id
  instance_type          = var.instance_types[var.environment]
  key_name               = var.key_name
  vpc_id                 = module.vpc.vpc_id
  public_subnet_id       = module.vpc.public_subnet_ids[0]
  private_subnet_id      = module.vpc.private_subnet_ids[0]
  jenkins_instance_type  = var.jenkins_instance_types[var.environment]
  instance_count         = var.instance_count
  tags                   = var.tags
}


