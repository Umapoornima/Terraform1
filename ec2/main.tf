provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "Ec2instance" {
  count = "1"
  ami = "ami-04581fbf744a7d11f"
  instance_type = "t2.micro"
  security_groups = ["Linux SG"]
  key_name = "awskey"
  user_data = "${file("/opt/terraform/Terraform1/ec2/userdata/apache.sh")}"
  tags = {
   Name = "Ec2instance"
  }
}
