resource "aws_eip" "nat" {
  domain = "vpc"


  tags = {
    Name : "${var.env_prefix}-nat-ip"
  }
}


resource "aws_nat_gateway" "nat_gw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public_subnet-1[0].id # Put NAT in first public subnet
  depends_on    = [aws_internet_gateway.myapp-igw]

  tags = {
    Name : "${var.env_prefix}-nat-gw"
  }
}