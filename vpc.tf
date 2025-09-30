resource "aws_vpc" "truecouch-vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = var.enable_dns_hostnames
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support



  tags = {
    Name : "${var.env_prefix}-vpc"
  }

}