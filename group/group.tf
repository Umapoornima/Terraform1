provider "aws" {
  aws = "us-east-1"
  access_key = ""
  secret_kry = ""
}

resource "aws_security_group" "sg" {
 name = "securitygroup"
 description = "This security group is created by terraform"
 vpc_id = ""
 ingress {
  description = "enabling inbound rule"
  from_port = 80
  to_port = 80
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
 }
  egress {
    description = "This security group is created by terraform"
    from_port = 0
    to_port = 65535
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
   Name = "security group by terraform
  }
}
