# modules/ec2/outputs.tf

output "jenkins_public_ip" {
  description = "Public IP address of the Jenkins server"
  value       = aws_instance.jenkins.public_ip
}

output "jenkins_instance_id" {
  description = "ID of the Jenkins EC2 instance"
  value       = aws_instance.jenkins.id
}

output "app_instance_ids" {
  description = "IDs of the application EC2 instances"
  value       = aws_instance.app[*].id
}

output "app_private_ips" {
  description = "Private IP addresses of the application EC2 instances"
  value       = aws_instance.app[*].private_ip
}
