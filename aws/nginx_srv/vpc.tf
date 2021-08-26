resource "aws_vpc" "aws_demo_vpc" {
  cidr_block       = "10.0.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "aws_demo_vpc"
  }
}
resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.aws_demo_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-west-1b"

  tags = {
    Name = "Public Subnet"
  }
}
resource "aws_internet_gateway" "aws_demo_vpc_igw" {
  vpc_id = aws_vpc.aws_demo_vpc.id

  tags = {
    Name = "My VPC - Internet Gateway"
  }
}
resource "aws_route_table" "aws_demo_vpc_us_west_1b_public" {
    vpc_id = aws_vpc.aws_demo_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.aws_demo_vpc_igw.id
    }

    tags = {
        Name = "Public Subnet Route Table."
    }
}
resource "aws_route_table_association" "aws_demo_vpc_us_west_1b_public" {
    subnet_id = aws_subnet.public.id
    route_table_id = aws_route_table.aws_demo_vpc_us_west_1b_public.id
}
