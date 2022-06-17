resource "aws_vpc" "vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "mjrod-aws-docker-vpc"
  }
}


# Public subnet resource
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"
  depends_on = [aws_internet_gateway.igw]

  tags = {
    Name = "mjrod-aws-docker-public-subnet"
  }
}


# Internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    "Name" = "mjrod-aws-docker-igw"
  }
}


# Elastic IP
resource "aws_eip" "public_entry_ip" {
  associate_with_private_ip = "10.0.1.5"
  instance = data.terraform_remote_state.docker_host_id.outputs.docker_host_id

  tags = {
    "Name" = "mjrod_aws_docker_eip"
  }
}
