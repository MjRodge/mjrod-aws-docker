data "terraform_remote_state" "prod_vpc" {
  backend = "s3"  
  
  config = {
    bucket = "mjrod-aws-docker-terraform-state-bucket"
    key    = "prod/vpc/terraform.tfstate"
    region = "us-east-2"
  }
}

data "terraform_remote_state" "s3_volume_access" {
  backend = "s3"  
  
  config = {
    bucket = "mjrod-aws-docker-terraform-state-bucket"
    key    = "global/iam/s3-volume-access/terraform.tfstate"
    region = "us-east-2"
  }
}