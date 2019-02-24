# terraform-vpc
AWS Network templates

terraform apply \
-var 'cidr_block=192.168.0.0/16' \
-var 'aws_vpc_name=trijit-terra-test' \
-var 'Private_Subnet_2a_Name=trijit-pvt-2a' \
-var 'Private_Subnet_2b_Name=trijit-pvt-2b' \
-var 'Private_Subnet_2a_cidr=192.168.0.0/24' \
-var 'Private_Subnet_2b_cidr=192.168.1.0/24' \
-auto-approve