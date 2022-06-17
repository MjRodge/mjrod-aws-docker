output "docker_host_id" {
  value = aws_instance.docker_host.id
  description = "id of the docker host instance"
}

output "docker_host_public_ip" {
  value = aws_instance.docker_host.public_ip
}