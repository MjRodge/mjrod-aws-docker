resource "aws_instance" "docker-host" {
  # us-east-2
  ami = "ami-02d1e544b84bf7502" # Amazon Linux 2 AMI (HVM) - Kernel 5.10
  instance_type = "t2.micro"

  tags = {
    Name = "mjrod-aws-docker-host"
  }
}