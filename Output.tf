output "DNS_Server" {
  description = "The DNS server address"
  value = aws_ami.example.public_ip
}