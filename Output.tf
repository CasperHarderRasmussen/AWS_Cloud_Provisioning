output "DNS_Server_IP" {
  description = "The IPv4 address of the DNS server"
  value = aws_ami.DNS_Server_Ubuntu_22_04.public_ip
}

output "DNS_Server_Host" {
  description = "The host name of the DNS server"
  value = aws_ami.DNS_Server_Ubuntu_22_04.public_dns_name
}

output "DNS_Server_ID" {
  description = "The ID of the DNS server instance"
  value = aws_ami.DNS_Server_Ubuntu_22_04.id
}