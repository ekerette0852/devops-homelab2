# Argo CD Installation

## Objective

Implement GitOps deployment management using Argo CD.

## Environment

- Kubernetes
- K3s
- Traefik Ingress Controller

## Installation

Created namespace:

```bash
kubectl create namespace argocd
```

Installed Argo CD:

```bash
kubectl apply -n argocd \
-f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
```

## Verification

All Argo CD components successfully deployed and running.

Verified pods:

- argocd-server
- argocd-repo-server
- argocd-application-controller
- argocd-applicationset-controller
- argocd-dex-server
- argocd-redis
- argocd-notifications-controller

Status: Healthy

## GitOps Validation

Updated Helm chart replica count from 5 to 3 in Git.

Result:

- Argo CD detected repository change
- Application moved OutOfSync
- Automatic synchronization executed
- Kubernetes deployment updated successfully

Verification:

kubectl describe deployment nginx-demo-nginx-chart -n default

Replicas:
3 desired | 3 updated | 3 total | 3 available

Status:
Healthy
Synced

## Skills Demonstrated

- GitOps
- Kubernetes Administration
- Application Lifecycle Management
- Application Lifecycle Management
