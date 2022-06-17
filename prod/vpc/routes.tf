resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    "Name" = "mjrod_aws_docker_public_route_table"
  }
}

resource "aws_route_table_association" "public_rtb_association" {
  subnet_id = aws_subnet.public.id
  route_table_id = aws_route_table.public_route_table.id
}