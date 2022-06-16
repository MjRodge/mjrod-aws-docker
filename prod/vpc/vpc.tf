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
}