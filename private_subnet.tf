resource "aws_subnet" "private_subnet-1" {
  count             = length(var.private_subnet_cidrs)
  vpc_id            = aws_vpc.truecouch-vpc.id
  cidr_block        = var.private_subnet_cidrs[count.index]
  availability_zone = var.availability_zone[count.index]

  tags = {
    Name = "Private-Subnet-${count.index + 1}"
  }
}

