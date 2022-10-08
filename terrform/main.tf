provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "testinstance" {
ami = "ami — 028598a84ca601344"
instance_type = "m5.4xlarge"
subnet_id = "subnet-06a4dd555ee331ca"
associate_public_ip_address = "false"
vpc_security_group_ids = [ "sg-0b7a71dca0a95842f" ]
key_name = "testinstance"
tags = {
  Name = "testinstance"
}



}

