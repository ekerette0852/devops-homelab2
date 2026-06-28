## What I Learned

This lab strengthened my understanding of Terraform remote state management using AWS.

Key concepts I practiced include:

- Configuring Terraform to use an AWS S3 backend
- Protecting Terraform state with DynamoDB state locking
- Reinitializing Terraform backends safely
- Managing Terraform state remotely for team collaboration
- Validating Terraform configurations before deployment

## Challenges Solved

During this lab I encountered several real-world issues:

- Troubleshot backend initialization failures
- Identified incorrect S3 bucket references
- Corrected backend configuration
- Successfully reconfigured Terraform using `terraform init -reconfigure`

These troubleshooting steps reflect common Infrastructure-as-Code problems engineers encounter in production.

## Screenshots

### Terraform Init

![Terraform Init](screenshots/terraform-init.png)

---

### Terraform Validate

![Terraform Validate](screenshots/terraform-validate.png)

---

### Terraform Plan

![Terraform Plan](screenshots/terraform-plan.png)
