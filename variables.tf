
provider "aws" {
  region = "us-west-2"
}

variable "cidr_block" {}

variable "aws_vpc_name" {
  default = "trijit-terraform-test"
}
variable "vpc_instance_tenancy" {
  default = "default"
}

variable "vpc_enable_dns_support" {
  default = "true"
}

variable "vpc_enable_dns_hostnames" {
  default = "true"
}
variable "global_tags" {
  description = "AWS tags that will be added to all resources managed herein"
  type = "map"
  default = {
    "Creator" = "Trijit"
    "Managed By" = "Terraform"
  }
}