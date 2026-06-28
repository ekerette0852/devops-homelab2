# Terraform Modules Lab

## Project Overview

This project demonstrates how to build reusable Infrastructure as Code using Terraform Modules. Instead of placing all infrastructure in a single configuration, resources are separated into reusable modules that improve scalability, maintainability, and code organization.

## DevOps Skills Demonstrated

* Infrastructure as Code (Terraform)
* AWS Cloud Infrastructure
* Reusable Terraform Modules
* Modular Infrastructure Design
* Amazon EC2
* Amazon VPC
* Public Networking
* Infrastructure Provisioning
* Infrastructure Validation
* Infrastructure Planning
* Infrastructure Lifecycle Management
* Git Version Control
* Linux Administration


## Technologies

- Terraform v1.12.2
- AWS Provider v5.100.0
- Amazon EC2
- Amazon VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Groups
- Ubuntu Linux

## Project Structure

```
terraform-modules-lab/
├── main.tf
├── versions.tf
├── outputs.tf
├── README.md
├── screenshots/
├── modules/
│   ├── network/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── ec2/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
```

## Architecture

```
AWS
│
├── VPC
│
├── Public Subnet
│
├── Internet Gateway
│
├── Route Table
│
└── EC2 Instance
```

## Features

- Modular Terraform architecture
- Reusable VPC module
- Reusable EC2 module
- Outputs shared between modules
- Public subnet deployment
- Infrastructure validation
- Infrastructure planning
- Infrastructure provisioning
- State management

## Commands Used

Initialize Terraform

```bash
terraform init
```

Format configuration

```bash
terraform fmt
```

Validate configuration

```bash
terraform validate
```

Preview infrastructure

```bash
terraform plan
```

Deploy infrastructure

```bash
terraform apply
```

View outputs

```bash
terraform output
```

View state

```bash
terraform state list
```

Destroy infrastructure

```bash
terraform destroy
```

## Lessons Learned

- How to build reusable Terraform modules
- Passing variables between modules
- Using module outputs as inputs
- Creating reusable AWS infrastructure
- Organizing Infrastructure as Code projects
- Managing Terraform state
- Troubleshooting AWS deployment errors
- Validating and formatting Terraform configurations

## Screenshots

Include screenshots of:

- terraform init
- terraform validate
- terraform plan
- terraform apply
- terraform output
- terraform state list
- AWS VPC
- AWS EC2 Instance

## Skills Demonstrated

- Terraform
- Infrastructure as Code (IaC)
- AWS Networking
- Amazon EC2
- Amazon VPC
- Terraform Modules
- Git
- GitHub
- Linux
- DevOps Best Practices
