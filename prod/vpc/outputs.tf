output "public_subnet_id" {
  value = aws_subnet.public.id
  description = "public subnet resource id"
}