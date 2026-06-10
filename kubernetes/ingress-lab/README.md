# Kubernetes Ingress Lab

## Objective
Route traffic to multiple applications through a single entry point using Traefik Ingress.

## Applications
- nginx-demo
- apache-demo

## Components
- K3s
- Traefik
- Kubernetes Services
- Kubernetes Ingress

## Validation

- nginx.local routes to nginx-demo
- apache.local routes to apache-demo
- Traffic enters through Traefik Ingress Controller
