##Create the vpc
resource "aws_vpc" "vpc" {
  cidr_block = var.vpc-cidrblock
  tags = {
    Name = var.vpc-name
  }
}

