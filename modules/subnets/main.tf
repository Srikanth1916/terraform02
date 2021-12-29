##Creation of the public subenet
resource "aws_subnet" "public-subnet" {
  vpc_id     = var.vpc-id
  cidr_block = var.public-subnet-cidrblock
   map_public_ip_on_launch = true

  tags = {
    Name = var.public-subnet-name
  }
}

##Creation of the private subnet
resource "aws_subnet" "private-subnet" {
  vpc_id     = var.vpc-id
  cidr_block = var.private-subnet-cidrblock

  tags = {
    Name = var.private-subnet-name
  }
}

