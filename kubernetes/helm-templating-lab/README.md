# Kubernetes Helm Templating Lab

## Objective

Learn how Helm values dynamically generate Kubernetes resources.

## Skills Demonstrated

- values.yaml
- template rendering
- helm install
- helm upgrade
- helm template
- helm dry-run

## Commands Used

helm create custom-nginx

helm install custom-demo ./custom-nginx

helm upgrade custom-demo ./custom-nginx --set replicaCount=5

helm template custom-demo ./custom-nginx

helm install test-release ./custom-nginx --dry-run
