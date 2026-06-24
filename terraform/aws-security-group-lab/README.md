# Terraform AWS Security Group Lab

## Overview

This lab demonstrates how to provision an AWS Security Group using Terraform.

The Security Group was deployed inside a custom VPC and configured to allow:

* SSH (Port 22)
* HTTP (Port 80)
* HTTPS (Port 443)

This project demonstrates Infrastructure as Code (IaC) principles using Terraform and AWS.

---

## Architecture

Internet

↓

Security Group

├── SSH (22)

├── HTTP (80)

└── HTTPS (443)

↓

AWS VPC

---

## Terraform Resources Used

### VPC

```hcl
aws_vpc
```

Creates a dedicated VPC for the Security Group.

### Security Group

```hcl
aws_security_group
```

Creates a Security Group with inbound and outbound rules.

---

## Skills Demonstrated

* Terraform Fundamentals
* AWS Networking
* AWS VPC Configuration
* AWS Security Groups
* Infrastructure as Code (IaC)
* Resource Dependencies
* Terraform Planning and Deployment

---

## Deployment Steps

Initialize Terraform:

```bash
terraform init
```

Validate Configuration:

```bash
terraform validate
```

Review Infrastructure Plan:

```bash
terraform plan
```

Deploy Infrastructure:

```bash
terraform apply
```

Destroy Infrastructure:

```bash
terraform destroy
```

---

## Verification

After deployment, the Security Group was verified in the AWS Console.

Configured Rules:

| Protocol | Port |
| -------- | ---- |
| SSH      | 22   |
| HTTP     | 80   |
| HTTPS    | 443  |

---

## Infrastructure Lifecycle

The infrastructure was successfully:

- Planned using Terraform
- Deployed to Aws
- Verified in the AWS Console
- Destroyed using Terraform to prevent unnecessary resource consumption

### Destroy Command

```bash
terraform destroy

---

## Lessons Learned

* How Security Groups control traffic in AWS
* How Terraform manages AWS networking resources
* How resource dependencies are automatically handled
* How to safely deploy and destroy infrastructure using Terraform

---

## Author

Ekerette Akpanyah

DevOps Engineer | Cloud Enthusiast | Terraform Practitioner

