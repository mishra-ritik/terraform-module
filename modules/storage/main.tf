resource "aws_ebs_volume" "jenkins_volume" {
  availability_zone = var.availability_zone
  size              = var.size
  type              = var.volume_type

  tags = {
    Name = "${var.project_name}-${var.environment}-jenkins-volume"
  }
}
