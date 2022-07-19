resource "aws_s3_bucket" "volume_bucket" {
  bucket = "mjrod-aws-docker-volumes"

  tags = {
    Name = "mjrod_aws_docker_volume_bucket"
  }
}

resource "aws_s3_bucket_acl" "volume_bucket_acl" {
  bucket = aws_s3_bucket.volume_bucket.id
  acl = "private"
}