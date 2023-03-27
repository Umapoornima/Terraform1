resource "aws_iam_policy" "policydocument" {
  name = "tf-policydocument"
  policy = data.aws_iam_policy_document.example.json
}
data "aws_iam_policy_document" "example" {
  statement {
   effect = "Allow"
   actions = [
    "s3:ListBucket"
   ],
   resources = [
    aws_s3_bucket.example.arn
  ]
  } 
  statement {
   effect = "Allow"
   actions = [
    "s3:GetObject",
    "s3:PutObject"
   ],
   resources = [
    "${aws_s3_bucket.example.arn}/*"
   ]
  }
}
