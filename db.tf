resource "aws_dynamodb_table" "app_data" {
  name         = "nagesh-app-table"
  hash_key     = "id"
  billing_mode = "PAY_PER_REQUEST"  # On-demand mode: no need to specify read/write capacity

  attribute {
    name = "id"
    type = "S"  # 'S' stands for String
  }

  tags = {

    name     = "nagesh-serverless-app"
  }
}
