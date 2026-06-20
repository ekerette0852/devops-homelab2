# Terraform Kubernetes NGINX Lab

## Objective

Deploy Kubernetes resources using Terraform.

## Skills Demonstrated

- Infrastructure as Code
- Terraform Providers
- Kubernetes Namespace Management
- Kubernetes Deployments
- Kubernetes Services
- Terraform State Management

## Resources Created

- Namespace
- Deployment
- Service

## Verification

kubectl get deploy -n terraform-lab

Result:

READY 3/3

kubectl get svc -n terraform-lab

Result:

nginx-service
