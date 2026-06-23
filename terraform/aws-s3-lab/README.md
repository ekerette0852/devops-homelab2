# Terraform AWS S3 Lab

## Objective

Create an AWS S3 bucket using Terraform.

## Technologies

- AWS
- Terraform
- IAM
- S3
- AWS CLI

## Files

- main.tf

## Terraform Configuration

```bash
terraform init
terraform plan
terraform apply
```

## Verification

### AWS Authentication

```bash
aws sts get-caller-identity
```

Result:

```text
Authenticated successfully as terraform-user.
```

### S3 Bucket Verification

```bash
aws s3 ls
```

Result:

```text
ekerette-devops-homelab-s3-lab-136913568034
```

## Outcome

Successfully provisioned an AWS S3 bucket using Terraform and verified deployment through the AWS CLI.
