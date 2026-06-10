# Kubernetes Persistent Storage Lab

## Objective

Deploy an NGINX application using a PersistentVolumeClaim (PVC) to provide persistent storage.

## Components

- Kubernetes Deployment
- PersistentVolumeClaim (PVC)
- NGINX Container

## Files

- pvc.yaml
- nginx-pvc-deployment.yaml

## Validation

Apply resources:

kubectl apply -f pvc.yaml
kubectl apply -f nginx-pvc-deployment.yaml

Verify PVC:

kubectl get pvc

Verify Pod:

kubectl get pods

## Learning Outcomes

- Understand PersistentVolumeClaims
- Mount storage into containers
- Preserve application data across pod restarts
