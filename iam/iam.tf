provider "aws" {
  region = "us-east-1"
}

variable "usernames" {
  type = list(string)
  default = ["poori","mihira","jessu"]
}
resource "aws_iam_user" "iamuser" {
  count = length(var.usernames)
  name = var.usernames[count.index]
}
