##Creation of public route table
resource "aws_route_table" "public-routetable" {
  vpc_id = var.vpc-id

  route {
    cidr_block = var.public-routetable-cidrblock
    gateway_id = var.internet-gateway
  }

  tags = {
    Name = var.public-routetable-name
  }
}

##Creation of private route table
resource "aws_route_table" "private-routetable" {
  vpc_id = var.vpc-id

  route {
    cidr_block = var.private-routetable-cidrblock
    gateway_id = var.nat-gateway
  }

  tags = {
    Name = var.private-routetable-name
  }
}



## Creation of the route table associate for public
resource "aws_route_table_association" "public-route-asso" {
  subnet_id      = var.public-subnet-route
  route_table_id = aws_route_table.public-routetable.id
}


##Creation the route table association for private
resource "aws_route_table_association" "private-route-asso" {
  subnet_id      = var.private-subnet-route
  route_table_id = aws_route_table.private-routetable.id
}
