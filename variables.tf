variable "region" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "env_prefix" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "enable_dns_support" {
  type = bool
}

variable "instance_tenancy" {
  type = string
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)

}


variable "availability_zone" {
  type = list(string)
}

