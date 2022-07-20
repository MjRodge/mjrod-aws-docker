data "terraform_remote_state" "docker_volume_s3" {
  backend = "s3"  
  
  config = {
    bucket = "mjrod-aws-docker-terraform-state-bucket"
    key    = "prod/data-storage/docker-volumes-s3/terraform.tfstate"
    region = "us-east-2"
  }
}