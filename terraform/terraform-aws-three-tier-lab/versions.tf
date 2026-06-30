terraform {
  required_version = ">= 1.12.2"

  backend "s3" {
    bucket         = "ekerette-terraform-state-bucket-136913568034"
    key            = "terraform/aws-three-tier-lab/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  } 

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.100.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
