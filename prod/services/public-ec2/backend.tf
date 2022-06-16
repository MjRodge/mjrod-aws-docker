terraform {
  backend "s3" {
    bucket         = "mjrod-aws-docker-terraform-state-bucket"
    key            = "prod/services/public-ec2/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "mjrod-aws-docker-terraform-state-lock-db"
    encrypt        = true
  }
}