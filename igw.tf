resource "aws_internet_gateway" "myapp-igw" {
  vpc_id = aws_vpc.truecouch-vpc.id

  tags = {
    Name : "${var.env_prefix}-igw"
  }

}