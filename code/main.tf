#
# This file describes the network infrastructure components:
#     vpc, subnets, internet gateway, nat gateway, route tables
#
#
# -------------------------------------------------------
# Start US Infra Section
# -------------------------------------------------------
resource "aws_vpc" "vpc" {
    cidr_block              = var.vpc_cidr
    enable_dns_hostnames    = true
    enable_dns_support      = true

    tags = {
        Name = "vpc-us-10.0.0.0/16"
    }
}
resource "aws_subnet" "public_subnet_us_1" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = var.public_subnet_us_1
    availability_zone       = var.availibilty_zone_1
    map_public_ip_on_launch = true

    tags = {
        Name = "public_subnet_us_1-10.0.1.0/24"
    }
}
resource "aws_subnet" "private_subnet_us_1" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = var.private_subnet_us_1
    availability_zone       = var.availibilty_zone_1

    tags = {
        Name = "private_subnet_us_1-10.0.2.0/24"
    }
}
resource "aws_subnet" "private_sub_3_us_it" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = var.private_sub_3_us_it
    availability_zone       = var.availibilty_zone_1

    tags = {
        Name = "private_sub_3_us_it-10.0.3.0/23"
    }
}
resource "aws_subnet" "private_sub_4_us_rd" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = var.private_sub_4_us_rd
    availability_zone       = var.availibilty_zone_1

    tags = {
        Name = "private_sub_4_us_rd-10.0.5.0/22"
    }
}
resource "aws_subnet" "public_subnet_us_2" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = var.public_subnet_us_2
    availability_zone       = var.availibilty_zone_2
    map_public_ip_on_launch = true

    tags = {
        Name = "public_subnet_us_2-10.0.3.0/24"
    }
}
resource "aws_subnet" "private_subnet_us_2" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = var.private_subnet_us_2
    availability_zone       = var.availibilty_zone_2

    tags = {
        Name = "private_subnet_us_2-10.0.4.0/24"
    }
}
resource "aws_subnet" "private_sub_13_us_it" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = var.private_sub_13_us_it
    availability_zone       = var.availibilty_zone_2

    tags = {
        Name = "private_sub_13_us_it-10.0.13.0/23"
    }
}
resource "aws_subnet" "private_sub_14_us_rd" {
    vpc_id                  = aws_vpc.vpc.id
    cidr_block              = var.private_sub_14_us_rd
    availability_zone       = var.availibilty_zone_2

    tags = {
        Name = "private_sub_14_us_rd-10.0.15.0/22"
    }
}
resource "aws_internet_gateway" "igw" {
    vpc_id                  = aws_vpc.vpc.id
}
resource "aws_nat_gateway" "ngw" {
    allocation_id           = aws_eip.nateip.id
    subnet_id               = aws_subnet.public_subnet_us_1.id
    depends_on              = [ aws_internet_gateway.igw ]
}
resource "aws_eip" "nateip" {
    domain                  = "vpc"
}
# -------------------------------------------------------
# Start EU Infra Section
# -------------------------------------------------------
resource "aws_vpc" "vpc-eu" {
    cidr_block              = var.vpc_eu_cidr
    enable_dns_hostnames    = true
    enable_dns_support      = true
    provider                = aws.eu_env
    
    tags = {
        Name = "vpc-eu-192.168.0.0/16"
    }
}
resource "aws_subnet" "public_sub_eu_1" {
    vpc_id                  = aws_vpc.vpc-eu.id
    cidr_block              = var.public_sub_eu_1
    availability_zone       = var.availibilty_zone_eu_1
    map_public_ip_on_launch = true

    provider = aws.eu_env

    tags = {
        Name = "public-sub-eu-1-192.168.1.0/24"
    }
}
resource "aws_subnet" "private_sub_eu_2" {
    vpc_id                  = aws_vpc.vpc-eu.id
    cidr_block              = var.private_sub_eu_2
    availability_zone       = var.availibilty_zone_eu_1

    provider = aws.eu_env

    tags = {
        Name = "private_sub_eu_2-192.168.2.0/24"
    }
}
resource "aws_subnet" "private_sub_3_eu_it" {
    vpc_id                  = aws_vpc.vpc-eu.id
    cidr_block              = var.private_sub_3_eu_it
    availability_zone       = var.availibilty_zone_eu_1

    provider = aws.eu_env

    tags = {
        Name = "private_sub_3_eu_it-192.168.3.0/23"
    }
}
resource "aws_subnet" "private_sub_4_eu_rd" {
    vpc_id                  = aws_vpc.vpc-eu.id
    cidr_block              = var.private_sub_4_eu_rd
    availability_zone       = var.availibilty_zone_eu_1

    provider = aws.eu_env

    tags = {
        Name = "private_sub_4_eu_rd-192.168.5.0/22"
    }
}
resource "aws_subnet" "public_sub_eu_11" {
    vpc_id                  = aws_vpc.vpc-eu.id
    cidr_block              = var.public_sub_eu_11
    availability_zone       = var.availibilty_zone_eu_2
    map_public_ip_on_launch = true

    provider = aws.eu_env

    tags = {
        Name = "public_sub_eu_11-192.168.11.0/24"
    }
}
resource "aws_subnet" "private_sub_eu_12" {
    vpc_id                  = aws_vpc.vpc-eu.id
    cidr_block              = var.private_sub_eu_12
    availability_zone       = var.availibilty_zone_eu_2
    map_public_ip_on_launch = true

    provider = aws.eu_env

    tags = {
        Name = "private_sub_eu_12-192.168.12.0/24"
    }
}
resource "aws_subnet" "private_sub_13_eu_it" {
    vpc_id                  = aws_vpc.vpc-eu.id
    cidr_block              = var.private_sub_13_eu_it
    availability_zone       = var.availibilty_zone_eu_2

    provider = aws.eu_env

    tags = {
        Name = "private_sub_13_eu_it-192.168.13.0/23"
    }
}
resource "aws_subnet" "private_sub_14_eu_rd" {
    vpc_id                  = aws_vpc.vpc-eu.id
    cidr_block              = var.private_sub_14_eu_rd
    availability_zone       = var.availibilty_zone_eu_2

    provider = aws.eu_env

    tags = {
        Name = "private_sub_14_eu_rd-192.168.15.0/22"
    }
}
# -------------------------------------------------------
# End Infra EU Section
# -------------------------------------------------------
resource "aws_route_table" "public" {
    vpc_id                  = aws_vpc.vpc.id
}
resource "aws_route" "public" {
    route_table_id          = aws_route_table.public.id
    destination_cidr_block  = "0.0.0.0/0"
    gateway_id              = aws_internet_gateway.igw.id
}
resource "aws_route_table_association" "public1" {
    subnet_id               = aws_subnet.public_subnet_us_1.id
    route_table_id          = aws_route_table.public.id
}
resource "aws_route_table_association" "public2" {
    subnet_id               = aws_subnet.public_subnet_us_2.id
    route_table_id          = aws_route_table.public.id
}
resource "aws_route_table" "private" {
    vpc_id                  = aws_vpc.vpc.id
}
resource "aws_route" "private" {
    route_table_id          = aws_route_table.private.id
    destination_cidr_block  = "0.0.0.0/0"
    nat_gateway_id          = aws_nat_gateway.ngw.id
}
resource "aws_route_table_association" "private1" {
    subnet_id               = aws_subnet.private_subnet_us_1.id
    route_table_id          = aws_route_table.private.id
}
resource "aws_route_table_association" "private2" {
    subnet_id               = aws_subnet.private_subnet_us_2.id
    route_table_id          = aws_route_table.private.id
}
