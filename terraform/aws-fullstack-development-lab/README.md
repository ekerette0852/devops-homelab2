# AWS Full Stack Deployment Lab

## Objective
Deploy a public web application on AWS using Terraform, EC2, Docker, Nginx, and user_data automation.

## Infrastructure Created
- VPC
- Public Subnet
- Internet Gateway
- Route Table
- Security Group
- EC2 Instance
- Docker
- Nginx

## Verification
- Terraform initialized successfully
- Terraform validated successfully
- EC2 instance running in AWS
- Website accessible publicly at Terraform output URL

## Terraform Outputs
- Instance ID
- Public IP
- Website URL

## Cleanup
```bash
terraform destroy


## Screenshots

### Terraform Apply

![Terraform Apply](screenshots/terraform-apply.png)

---

### EC2 Instance

![EC2](screenshots/ec2-running.png)

---

### VPC

![VPC](screenshots/vpc.png)

---

### Security Group

![Security Group](screenshots/security-group.png)

---

### Application

![Website](screenshots/website.png)

---

### Terraform Outputs

![Outputs](screenshots/terraform-output.png)
