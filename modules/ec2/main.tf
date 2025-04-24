module "security_group" {
  source               = "../security_group"
  project_name         = var.project_name
  environment          = var.environment
  vpc_id               = var.vpc_id
}

resource "aws_instance" "jenkins" {
  ami                    = var.ami_id
  instance_type          = var.jenkins_instance_type
  key_name               = var.key_name
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [module.security_group.jenkins_sg_id]
  tags = {
    Name        = "${var.project_name}-${var.environment}-jenkins"
    Environment = var.environment
  }
}

resource "aws_instance" "app" {
  count                  = var.instance_count
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [module.security_group.app_sg_id]
  tags = {
    Name        = "${var.project_name}-${var.environment}-app-${count.index + 1}"
    Environment = var.environment
  }
}
