variable "vpc_cidr" {
    description = "CIDR block for the VPC"
    type = string
}

variable "environment" {
    description = "Environment Name"
}

variable "availability_zones" {
    description = "Availability Zones"
    type = list(string)
}

variable "public_subnet_cidrs" {
    description = "CIDR blocks for public subnets"
    type = list(string)
}

variable "private_subnet_cidrs" {
    description = "CIDR blocks for private subnets"
    type = list(string)
}