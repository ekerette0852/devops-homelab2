# Kubernetes Secrets Lab

## Objective

Learn how Kubernetes Secrets securely provide sensitive data to Pods.

## Skills Demonstrated

- Secret creation
- Base64 encoding and decoding
- Environment variable injection
- Secret consumption by Pods
- Deployment management

## Commands Used

kubectl create secret generic app-secret \
  --from-literal=username=admin \
  --from-literal=password=SuperSecret123

kubectl get secret app-secret -o yaml

kubectl apply -f secret-deployment.yaml

kubectl exec -it deployment/secret-demo -- env | grep APP
