# modules/ec2/instance.tf

resource "aws_instance" "jenkins" {
  ami                    = var.ami_id
  instance_type          = var.jenkins_instance_type[var.environment]
  key_name               = var.key_name
  subnet_id              = var.public_subnet_ids[0]
  vpc_security_group_ids = [aws_security_group.jenkins.id]

#   user_data = file("${path.module}/jenkins_setup.sh")

  tags = {
    Name        = "${var.project_name}-${var.environment}-jenkins"
    Environment = var.environment
    Project     = var.project_name
    Owner       = "Ritik"
    Purpose     = "POC"
  }

  root_block_device {
    volume_size = 10
    volume_type = "gp3"
  }
}

resource "aws_instance" "app" {
  count                  = 1
  ami                    = var.ami_id
  instance_type          = var.instance_type[var.environment]
  key_name               = var.key_name
  subnet_id              = var.private_subnet_ids[count.index % length(var.private_subnet_ids)]
  vpc_security_group_ids = [aws_security_group.app.id]

  tags = {
    Name        = "${var.project_name}-${var.environment}-app-${count.index + 1}"
    Environment = var.environment
    Project     = var.project_name
  }

  root_block_device {
    volume_size = 10
    volume_type = "gp3"
  }
}
