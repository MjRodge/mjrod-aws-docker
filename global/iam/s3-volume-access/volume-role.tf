resource "aws_iam_role" "ec2_s3_docker_volume_role" {
  name = "ec2_s3_docker_volume_role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "ec2_role_bucket_policy_attachment" {
  role = aws_iam_role.ec2_s3_docker_volume_role.name
  policy_arn = aws_iam_policy.volume_bucket_access_policy.arn
}