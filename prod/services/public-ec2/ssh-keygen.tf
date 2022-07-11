resource "tls_private_key" "public_ssh_key_pair" {
  algorithm = "RSA"
  rsa_bits = 4096
}
resource "aws_key_pair" "public_ssh_key_pair" {
  key_name = "mjrod_aws_docker_ssh_key_pair"
  public_key = tls_private_key.public_ssh_key_pair.public_key_openssh

  provisioner "local-exec" {
    command = "echo '${tls_private_key.public_ssh_key_pair.private_key_pem}' > ./mjrod-aws-docker-key-pair.pem"
  }
}
