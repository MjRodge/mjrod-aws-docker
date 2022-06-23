data "terraform_remote_state" "prod_vpc" {
  backend = "s3"  
  
  config = {
    bucket = "mjrod-aws-docker-terraform-state-bucket"
    key    = "prod/vpc/terraform.tfstate"
    region = "us-east-2"
  }
}