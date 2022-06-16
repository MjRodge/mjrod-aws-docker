output "public_subnet" {
  value = aws_subnet.public.id
  description = "public subnet resource id"
}