##Creation of internet gateway
resource "aws_internet_gateway" "ig" {
  vpc_id = var.vpc-id

  tags = {
    Name = var.internet-gateway-name
  }
}

