resource "aws_iam_policy" "policy" {
  name = "testpolicy"
  path = "/"
  description = "My Test Policy"
  policy = jsonencode({
   Version = "2012-10-17"
   Statement = [
    {
      Action = [
        "ec2:Describe*",
      ]
      Effect = "Allow"
      Resource = "*"
    }
     Action = [
      "s3:Describe*",
     ]
     Effect = "Allow"
     Resource = "*"
   ]
 })
}
