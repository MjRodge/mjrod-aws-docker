output "docker_volume_instance_profile" {
  value = aws_iam_instance_profile.ec2_s3_volume_profile.id
  description = "instance profile for s3 docker volume iam role"
}