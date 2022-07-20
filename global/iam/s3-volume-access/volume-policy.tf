data "aws_iam_policy_document" "volume_bucket_access_policy_document" {
  statement {
    actions   = ["s3:*"]
    resources = [data.terraform_remote_state.docker_volume_s3.outputs.docker_volume_s3_arn]
    effect = "Allow"
  }
}

resource "aws_iam_policy" "volume_bucket_access_policy" {
  name = "mjrod_aws_docker_volume_access_policy"
  description = "policy to assign to ec2 instance, allowing operations on the docker volume s3 bucket"
  policy = data.aws_iam_policy_document.volume_bucket_access_policy_document.json  
}