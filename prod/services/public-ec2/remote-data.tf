data "terraform_remote_state" "public_subnet" {
  backend = "s3"  
  
  config = {
    bucket = "mjrod-aws-docker-terraform-state-bucket"
    key    = "prod/vpc/terraform.tfstate"
    region = "us-east-2"
  }
}