# Terraform Remote State Lab

## Objective

Configure Terraform remote state using AWS S3 and DynamoDB.

## Technologies

- Terraform
- AWS S3
- AWS DynamoDB
- AWS CLI

## Resources Created

- S3 Bucket for Terraform State
- DynamoDB Table for State Locking

## Commands Used

terraform init
terraform validate
terraform plan
terraform apply

## Verification

aws s3 ls

aws dynamodb list-tables

terraform state list
