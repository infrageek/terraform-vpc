##Global Generic Variables
provider "aws" {
  region = "us-west-2"
}

variable "global_tags" {
  description = "AWS tags that will be added to all resources managed herein"
  type = "map"
  default = {
    "Creator" = "Trijit"
    "Managed By" = "Terraform"
  }
}

variable "Primary_AZ" {
  default = "us-west-2a"
}
variable "Secondary_AZ" {
  default = "us-west-2b"
}

##Service Specific Variables 
#VPC:
variable "cidr_block" {}

variable "aws_vpc_name" {}
variable "vpc_instance_tenancy" {
  default = "default"
}

variable "vpc_enable_dns_support" {
  default = "true"
}

variable "vpc_enable_dns_hostnames" {
  default = "true"
}

#VPC: Subnets
variable "Private_Subnet_2a_Name" {}
variable "Private_Subnet_2b_Name" {}
variable "Private_Subnet_2a_cidr" {}
variable "Private_Subnet_2b_cidr" {}
