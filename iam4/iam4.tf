provider "aws" {
  region = "us-east-1"
}

variable "usernames" {
 type = list(string)
 default = ["poori","sow","mihira"]
}
resource "aws_iam_user" "iamuser" {
 count = length(va.usernames)
 name = var.usernames[count.index]
}
