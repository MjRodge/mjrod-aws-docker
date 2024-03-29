resource "aws_instance" "docker_host" {
  # us-east-2
  ami = "ami-02d1e544b84bf7502" # Amazon Linux 2 AMI (HVM) - Kernel 5.10
  instance_type = "t2.micro"
  subnet_id = data.terraform_remote_state.prod_vpc.outputs.public_subnet_id
  private_ip = "10.0.1.5"
  associate_public_ip_address = true
  vpc_security_group_ids = [data.terraform_remote_state.prod_vpc.outputs.public_security_group_id]
  key_name = aws_key_pair.public_ssh_key_pair.id
  user_data = "${file("install-docker.sh")}"
  iam_instance_profile = data.terraform_remote_state.s3_volume_access.outputs.docker_volume_instance_profile

  tags = {
    Name = "mjrod-aws-docker-host"
  }
}
