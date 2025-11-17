
provider "dns" {
  update {
    server        = aws_ami.DNS_Server_Ubuntu_22_04.public_ip
    key_name      = var.Key_Name
    key_algorithm = var.Key_Algorithm
    key_secret    = var.Key_Secret
  }
}