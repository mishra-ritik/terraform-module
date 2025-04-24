aws_region = "us-east-1"
project_name = "terraform-demo"
environment = "dev"
vpc_cidr = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24"]
private_subnet_cidrs = ["10.0.2.0/24"]
availability_zones = ["us-east-1a", "us-east-1b"]
ami_id = "ami-0c7217cdde317cfec"  # Ubuntu 22.04 LTS AMI
instance_types = {
    dev     = "t2.micro"
    staging = "t2.small"
    prod    = "t2.medium"
}
jenkins_instance_types = {
    dev     = "t2.medium"
    staging = "t2.large"
    prod    = "t2.xlarge"
}
key_name = "ritik_1610"
instance_count = 2
tags = {
    "Project"     = "terraform-demo"   # Default project value
    "Owner"       = "Ritik Mishra"        # Owner of the resources
    "Purpose" = "POC"
}