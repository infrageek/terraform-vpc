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