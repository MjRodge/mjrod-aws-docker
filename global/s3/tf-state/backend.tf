terraform {
  backend "s3" {
    bucket         = "mjrod-aws-docker-terraform-state-bucket"
    key            = "global/s3/tf-state/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "mjrod-aws-docker-terraform-state-lock-db"
    encrypt        = true
  }
}