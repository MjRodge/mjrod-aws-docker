output "public_subnet_id" {
  value = aws_subnet.public.id
  description = "public subnet resource id"
}

output "eip_public_ip_address" {
  value = aws_eip.public_entry_ip.public_ip
  description = "elastic ip public address"
}

output "public_security_group" {
  value = aws_security_group.public_subnet_security_group.id
  description = "public security group id"
}