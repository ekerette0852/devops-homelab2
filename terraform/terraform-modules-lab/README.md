# Terraform Modules Lab

## Project Overview

This project demonstrates how to build reusable Infrastructure as Code using Terraform Modules. Instead of placing all infrastructure in a single configuration, resources are separated into reusable modules that improve scalability, maintainability, and code organization.

# Terraform Modules Lab

Badges (Terraform • AWS • Linux)

---


## Architecture Diagram

<p align="center">
  <img src="./architecture/terraform-modules-lab-architecture.png"
       alt="Terraform Modules Lab Architecture"
       width="100%">
</p>


## Project Structure

```text
terraform-modules-lab/
├── architecture/
│   └── terraform-modules-lab-architecture.png
├── modules/
│   ├── network/
│   └── ec2/
├── screenshots/
│   ├── terraform-init.png
│   ├── terraform-validate.png
│   ├── terraform-plan.png
│   ├── terraform-apply.png
│   └── terraform-destroy.png
├── main.tf
├── versions.tf
└── README.md
```

---

## Architecture Overview

(Brief explanation of each module)

---

## Deployment Workflow

(terraform init → validate → plan → apply → destroy)

---

## Screenshots

### Terraform Init

![Terraform Init](./screenshots/terraform-init.png)

### Terraform Validate

![Terraform Validate](./screenshots/terraform-validate.png)

### Terraform Plan

![Terraform Plan](./screenshots/terraform-plan.png)

### Terraform Apply

![Terraform Apply](./screenshots/terraform-apply.png)

### Terraform Destroy

![Terraform Destroy](./screenshots/terraform-destroy.png)

---

## Technologies Used

- Terraform v1.12.2
- AWS Provider v5.100.0
- Amazon VPC
- EC2
- Internet Gateway
- Route Table
- Public Subnet

---

## DevOps Skills Demonstrated

(The list you already created)

---

## Lessons Learned

- Designing reusable modules
- Passing outputs between modules
- Infrastructure lifecycle management
- Using module composition
- Creating maintainable Terraform projects

---

## Future Improvements

- Private subnet
- NAT Gateway
- Auto Scaling
- Load Balancer
- Multi-AZ deployment
- Remote backend integration
