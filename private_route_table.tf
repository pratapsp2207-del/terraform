resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.truecouch-vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gw.id
  }

  tags = {
    Name : "${var.env_prefix}-private-RT"
  }
}


resource "aws_route_table_association" "private_subnet_1" {
  count          = length(var.private_subnet_cidrs)
  subnet_id      = aws_subnet.private_subnet-1[count.index].id
  route_table_id = aws_route_table.private_rt.id
}

