terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }

  required_version = ">= 1.8.0"
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_ec2" {
  ami           = "ami-04b4f1a9cf54c11d0"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-ec2-lab"
  }
}
