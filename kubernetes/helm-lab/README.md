# Kubernetes Helm Charts Lab

## Objective

Learn how Helm packages and manages Kubernetes applications.

## Skills Demonstrated

- Helm installation
- Chart creation
- values.yaml customization
- Helm install
- Helm upgrade
- Helm rollback

## Commands Used

helm create nginx-chart

helm install nginx-demo ./nginx-chart

helm upgrade nginx-demo ./nginx-chart

helm history nginx-demo

helm rollback nginx-demo 1
