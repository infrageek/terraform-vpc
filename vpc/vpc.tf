#VPC Creation
resource "aws_vpc" "VPC_Creation" {
  cidr_block           = "${var.cidr_block}"
  enable_dns_support = "${var.vpc_enable_dns_support}"
  enable_dns_hostnames = "${var.vpc_enable_dns_hostnames}"
  instance_tenancy = "${var.vpc_instance_tenancy}"
  tags = "${merge(var.global_tags, map("Name", "${var.aws_vpc_name}"))}"
}

#Private Subnet Creation
resource "aws_subnet" "Private_2a" {
  vpc_id     = "${aws_vpc.VPC_Creation.id}"
  cidr_block = "${var.Private_Subnet_2a_cidr}"
  availability_zone = "${var.Primary_AZ}"
  tags = "${merge(var.global_tags, map("Name", "${var.Private_Subnet_2a_Name}"))}"
}
#Private Subnet Creation
resource "aws_subnet" "Private_2b" {
  vpc_id     = "${aws_vpc.VPC_Creation.id}"
  cidr_block = "${var.Private_Subnet_2b_cidr}"
  availability_zone = "${var.Secondary_AZ}"
  tags = "${merge(var.global_tags, map("Name", "${var.Private_Subnet_2b_Name}"))}"
}