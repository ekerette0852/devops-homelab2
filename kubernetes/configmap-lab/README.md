# Kubernetes ConfigMap Lab

## Objective

Learn how ConfigMaps inject configuration into Kubernetes Pods.

## Resources Created

- ConfigMap
- Deployment
- Service

## Verification

Verified ConfigMap content was mounted into NGINX and served through a NodePort service.

## Commands Used

kubectl apply -f configmap.yaml
kubectl apply -f deployment.yaml
kubectl expose deployment nginx-configmap-demo --port=80 --type=NodePort
kubectl exec -it deployment/nginx-configmap-demo -- cat /usr/share/nginx/html/index.html

## Skills Demonstrated

- ConfigMap creation
- ConfigMap mounting
- Deployment management
- Service exposure
- Pod restart and rollout
- Configuration injection
