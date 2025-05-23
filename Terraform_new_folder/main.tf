provider "aws" {
    region = "us-east-1"

}
# VPC 
resource "aws_vpc" "main" {
    cidr_block = "192.168.0.0/16"

    tags = {
        name = "main-tf-vpc"
    }
}
# Subnet 1
resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.1.0/24"
    availability_zone = "us-east-1a"

    tags = {
        name = "subnet 1"
    }
}
# Subnet 2
resource "aws_subnet" "subnet2" {
    vpc_id = aws_vpc.main.id
    cidr_block = "192.168.2.0/24"
    availability_zone = "us-east-1b"

    tags = {
        name = "Subnet 2"
    }
}
# Internet Gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id
    
    tags = {
        name = "main-igw"
    }
}
# Route Table
resource "aws_route_table" "route_table" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }

    tags = {
        name = "main-route-table"
    }
}
# Route Table Association Subnet 1
resource "aws_route_table_association" "a" {
    subnet_id = aws_subnet.subnet1.id
    route_table_id = aws_route_table.route_table.id
}
# Route Table Association Subnet 2
resource "aws_route_table_association" "b" {
    subnet_id = aws_subnet.subnet2.id
    route_table_id = aws_route_table.route_table.id
}
