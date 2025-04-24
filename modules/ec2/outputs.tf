output "jenkins_instance_id" {
  value = aws_instance.jenkins.id
}

output "app_instance_ids" {
  value = aws_instance.app[*].id
}

output "jenkins_public_ip" {
  description = "Public IP of the Jenkins EC2 instance"
  value       = aws_instance.jenkins.public_ip
}

output "app_private_ips" {
  description = "Private IPs of the application EC2 instances"
  value       = [for instance in aws_instance.app : instance.private_ip]
}
