#VPC Creation
resource "aws_vpc" "VPC_Creation" {
  cidr_block           = "${var.cidr_block}"
  enable_dns_support = "${var.vpc_enable_dns_support}"
  enable_dns_hostnames = "${var.vpc_enable_dns_hostnames}"
  instance_tenancy = "${var.vpc_instance_tenancy}"
  tags = "${merge(var.global_tags, map("Name", "${var.aws_vpc_name}"))}"
}