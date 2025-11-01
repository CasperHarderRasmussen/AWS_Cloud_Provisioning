resource "aws_ami" "example" {
  description         = "Bind DNS server based on Ubuntu 22.04 LTS release"
  name                = "Cloud-Infrastructure-Services-DNS-Ubuntu-22-04-2025.10.01.075031-de025d02-0189-4389-b82f-9c86871fd7e9"
  virtualization_type = "hvm"
  root_device_name    = "/dev/sda1"
  architecture        = "x86_64"
  tags                = "DNS-Server-Ubuntu-22.04"
  ebs_block_device {
    device_name = "/dev/sda1=snap-0836c605dd30b2c31:8:true:gp2"
    volume_type = "gp2"
    volume_size = 8
  }
}