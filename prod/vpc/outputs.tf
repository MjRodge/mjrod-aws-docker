output "public_subnet_id" {
  value = aws_subnet.public.id
  description = "public subnet resource id"
}

output "eip_public_ip_address" {
  value = aws_eip.public_entry_ip.public_ip
}