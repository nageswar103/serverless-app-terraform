output "s3_bucket_name" {
  description = "Name of the S3 bucket used for Lambda deployment package"
  value       = aws_s3_bucket.lambda_bucket.id
}

output "lambda_function_name" {
  description = "Name of the Lambda function"
  value       = aws_lambda_function.app_lambda.function_name
}

output "lambda_function_arn" {
  description = "ARN of the Lambda function"
  value       = aws_lambda_function.app_lambda.arn
}


output "dynamodb_table_name" {
  description = "Name of the DynamoDB table"
  value       = aws_dynamodb_table.app_data.name
}

output "api_gateway_url" {
  description = "Invoke URL of the API Gateway"
  value = "https://${aws_api_gateway_rest_api.api.id}.execute-api.us-east-1.amazonaws.com/data"

}

output "api_full_endpoint" {
  description = "Full API endpoint including resource path"
  value       = "https://${aws_api_gateway_rest_api.api.id}.execute-api.${var.region}.amazonaws.com/${aws_api_gateway_stage.api_stage.stage_name}/data"
}
