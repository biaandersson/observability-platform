resource "random_id" "random" {
  byte_length = 2
}

data "aws_availability_zone" "availability" {
  count = length(var.availability_zones)
  name  = var.availability_zones[count.index]
  state = "available"
}

resource "aws_vpc" "mtc_vpc" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  lifecycle {
    create_before_destroy = true
  }

  tags = {
    Name = "mtc-vpc-${random_id.random.dec}"
  }
}

resource "aws_internet_gateway" "mtc_internet_gateway" {
  vpc_id = aws_vpc.mtc_vpc.id

  tags = {
    Name = "mtc-igw-${random_id.random.dec}"
  }
}

resource "aws_route_table" "mtc_public_route_table" {
  vpc_id = aws_vpc.mtc_vpc.id

  tags = {
    Name = "mtc-public"
  }
}

resource "aws_route" "mtc_default_route" {
  gateway_id             = aws_internet_gateway.mtc_internet_gateway.id
  route_table_id         = aws_route_table.mtc_public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_default_route_table" "mtc_private_route_table" {
  default_route_table_id = aws_vpc.mtc_vpc.default_route_table_id

  tags = {
    Name = "mtc-private"
  }
}

resource "aws_subnet" "mtc_public_subnet" {
  availability_zone       = data.aws_availability_zone.availability[count.index].name
  cidr_block              = var.public_cidrs[count.index]
  count                   = length(var.public_cidrs)
  vpc_id                  = aws_vpc.mtc_vpc.id
  map_public_ip_on_launch = true

  tags = {
    Name = "mtc-public-${count.index + 1}"
  }
}

resource "aws_subnet" "mtc_private_subnet" {
  availability_zone       = data.aws_availability_zone.availability[count.index].name
  cidr_block              = var.private_cidrs[count.index]
  count                   = length(var.private_cidrs)
  vpc_id                  = aws_vpc.mtc_vpc.id
  map_public_ip_on_launch = false

  tags = {
    Name = "mtc-private-${count.index + 1}"
  }
}

