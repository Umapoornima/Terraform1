variable "bucket-name" {
 default = "poori1046"
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket-name}"
}

resource "aws_iam_policy" "policy" {
 name = "tf-jsonencode"
 path = "/"
 description = "My Test policy"
 policy = jsonencode ({
  Version = "2012-10-17"
  Statement = [
   {
    Effect = "Allow"
    Action = [
      "s3:ListAllBucket"
    ],
    Resource = [
      "*"
    ]
   },
   {
    Effect = "Allow"
    Action = [
      "s3:GetObject",
      "s3:PutObject"
    ]
    Resource = [
      "${var.bucket-name}/*"
    ]
   },
   {
    Effect = "Allow"
    Action = [
     "ec2:Describe*"
    ]
    Resource = "*"
   },
  ]

 })
}
