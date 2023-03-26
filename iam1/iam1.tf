provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
 bucket = "poori-iam-policy" 
}
resource "aws_iam_policy" "inline" {
  name = " "tf-inline"
  policy = <<EOF
{
  "Version": "2012-10-17"
  "Statement": [
    {
      "Action": [
        "s3:ListBucket"
       ],
      "Effect": "Allow",
      "Resource": "${aws_s3_bucket.example.arn}"
    },
    {
     "Action": [
       "s3:GetObject",
       "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "${aws_s3_bucket.example.arn}/*"
    }
   ]
}
}
