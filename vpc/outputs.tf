output "vpc_id" {
  value = "${aws_vpc.VPC_Creation.id}"
}
output "private_subnet_2a" {
  value = "${aws_subnet.Private_2a.id}"
}
output "private_subnet_2b" {
  value = "${aws_subnet.Private_2b.id}"
}
