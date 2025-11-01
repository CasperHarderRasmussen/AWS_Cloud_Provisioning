resource "aws_instance" "VM" {
    ami           = "ami-0ad8b99f4758cb35d"
    instance_type = "t2.medium"
    subnet_id = "10.0.0.0/24"
    private_ip = "10.0.0.1"
    
    tags = {
        Name = "DNS-Server"
    }
}