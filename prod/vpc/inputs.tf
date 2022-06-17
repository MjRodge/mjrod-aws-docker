data "terraform_remote_state" "docker_host_id" {
  backend = "s3"  
  
  config = {
    bucket = "mjrod-aws-docker-terraform-state-bucket"
    key    = "prod/services/public-ec2/terraform.tfstate"
    region = "us-east-2"
  }
}