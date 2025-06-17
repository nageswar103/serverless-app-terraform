resource "aws_s3_bucket" "lambda_bucket" {
  bucket = "nagesh-lambda-deployment-bucket"
  force_destroy = true
}


resource "aws_s3_bucket_ownership_controls" "lambda_bucket" {
  bucket = aws_s3_bucket.lambda_bucket.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

# DO NOT set `acl = "public-read"`
