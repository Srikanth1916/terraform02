##Creation eip
resource "aws_eip" "eip" {
  vpc = true
}



##Creation of the nat gateway
resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.eip.id
  subnet_id     = var.subnet-id

  tags = {
    Name = var.nat-gateway-name
  }
}

