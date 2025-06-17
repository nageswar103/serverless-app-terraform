Project 1: Automate the Deployment of a Serverless
=====================================================
Application Using AWS Lambda and Terraform
This project focuses on deploying a serverless application using AWS Lambda,
API Gateway, and DynamoDB. Terraform automates the setup, including
creating a Lambda function, configuring API Gateway to expose the function,
and integrating DynamoDB as the database layer.



✅ Architecture Overview

===============================

DynamoDB: stores application data.

Lambda Function: triggered by HTTP requests.

API Gateway: exposes Lambda as a REST API.

S3 Bucket: stores the Lambda deployment package (ZIP).

IAM Roles: grant permissions to Lambda.


serverless-app/
├── lambda/
│   └── app.py                 # Your Python Lambda code
├── lambda.zip                 # Zipped Lambda package
├── main.tf                    # Terraform configuration
├── variables.tf               # Input variables
├── outputs.tf                 # Output values
└── provider.tf                # AWS provider
