resource "aws_lambda_function" "app_lambda" {
  function_name = "nagesh-app-lambda"
  s3_bucket     = aws_s3_bucket.lambda_bucket.id
  s3_key        = "lambda.zip"
  handler       = "index.handler"
  runtime       = "nodejs18.x"
  role          = aws_iam_role.lambda_exec.arn
}
