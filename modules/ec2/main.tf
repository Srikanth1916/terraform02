##Creation of ec2 instance
resource "aws_instance" "ec2" {
  ami           = var.ami
  instance_type = var.instance-type
  subnet_id     = var.subnet-id
  associate_public_ip_address = true
  tags = {
    Name = var.ec2instance-name
  }
}
