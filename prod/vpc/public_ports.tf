# Configure security groups
resource "aws_security_group" "public_subnet_security_group" {
  name = "mjrod_aws_public_subnet_security_group"
  description = "Security group rules for public_subnet"
  vpc_id = aws_vpc.vpc.id
  tags = {
    "Name" = "mjrod_aws_public_security_group"
    "env" = "test"
  }

  ingress {
    description = "SSH from my IP"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["199.167.159.152/32"]
    # cidr_blocks = [ "0.0.0.0/0" ]
  }

  ingress {
    description = "HTTP"
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    description = "HTTPS"
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    description = "accept ping from my ip"
    from_port = 8
    to_port = 0
    protocol = "icmp"
    cidr_blocks = ["199.167.159.152/32"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}