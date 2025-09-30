resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.truecouch-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myapp-igw.id
  }

  tags = {
    Name : "${var.env_prefix}-public-RT"
  }
}


resource "aws_route_table_association" "public_subnet_1" {
  count          = length(var.public_subnet_cidrs)
  subnet_id      = aws_subnet.public_subnet-1[count.index].id
  route_table_id = aws_route_table.public_rt.id
}

