provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

variable "bucketname" {
  default = "poori@108"
}
resource "aws_s3_bucket" "s3bucket" {
 bucket = "${var.bucketname}"
 acl = "private"
 life_cycle {
  id = "archieve"
  enable = true
 }
transition {
 days = 60
 storage_class = "STANDARD_TA"
}
transition {
 days = 30
 storage_class = "GLACIER"
}
}
