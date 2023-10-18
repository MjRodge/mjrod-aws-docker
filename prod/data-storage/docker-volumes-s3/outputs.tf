output "docker_volume_s3_arn" {
  value = aws_s3_bucket.volume_bucket.arn
  description = "s3 bucket for docker volumes arn"
}