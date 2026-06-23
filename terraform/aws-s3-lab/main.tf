terraform {
  required_version = ">= 1.11.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.0.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "lab_bucket" {
  bucket = "ekerette-devops-homelab-s3-lab-136913568034"

  tags = {
    Name        = "Terraform S3 Lab"
    Environment = "Lab"
    Owner       = "Ekerette"
  }
}
