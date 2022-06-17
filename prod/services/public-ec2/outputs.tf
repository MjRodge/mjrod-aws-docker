output "docker_host_id" {
  value = aws_instance.docker_host.id
  description = "id of the docker host instance"
}