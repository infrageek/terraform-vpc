##some of the variables have demo value so that it does not prompt on terraform apply

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

#Needs user input
variable "cidr_block" {
  default = "1.1.1.1/18"
}

#Needs user input
variable "aws_vpc_name" {
  default = "my-test-vpc"
}
#Needs user input
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
#Needs user input
variable "Private_Subnet_2a_Name" {
  default = "set-a-name"
}
#Needs user input
variable "Private_Subnet_2b_Name" {
  default = "set-a-name"
}
#Needs user input
variable "Private_Subnet_2a_cidr" {
  default = "1.1.2.0/24"
}
#Needs user input
variable "Private_Subnet_2b_cidr" {
  default = "1.1.4.0/24"
}
