resource "aws_subnet" "public_subnet-1" {
  count                   = length(var.public_subnet_cidrs)
  vpc_id                  = aws_vpc.truecouch-vpc.id
  cidr_block              = var.public_subnet_cidrs[count.index]
  availability_zone       = var.availability_zone[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "Public-Subnet-${count.index + 1}"
  }
}

