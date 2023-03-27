provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_policy" "jsonencode" {
  name = "tf-jsonencode"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
     {
      Effect = "Allow"
      Action = [
        "s3:ListBucket"
      ],
      Resource = [
        aws_s3_bucket.example.arn
      ] 
     },
     {
      Effect = "Allow"
      Action = [
       "s3:GetObject",
       "s3:PutObject"
      ]
      Resource = [
       "${aws_s3_bucket.example.arn}/*"
      ]
     }
    ] 
  })
}
