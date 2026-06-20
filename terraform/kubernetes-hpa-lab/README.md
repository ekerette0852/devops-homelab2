# Kubernetes HPA Lab

## Objective

Deploy an NGINX application with Terraform and automatically scale pods using Kubernetes Horizontal Pod Autoscaler.

## Technologies

- Terraform
- Kubernetes
- Metrics Server
- Horizontal Pod Autoscaler

## Verification

## Deployment

```bash
kubectl get deploy -n hpa-lab
```

Example Output:

```text
NAME    READY   UP-TO-DATE   AVAILABLE   AGE
nginx   2/2     2            2           59s
```

### Service

```bash
kubectl get svc -n hpa-lab
```

Example Output:

```text
NAME            TYPE        CLUSTER-IP     PORT(S)
nginx-service   ClusterIP   10.43.130.177  80/TCP
```

### Horizontal Pod Autoscaler

```bash
kubectl get hpa -n hpa-lab
```

Example Output:

```text
NAME        REFERENCE          TARGETS   MINPODS   MAXPODS   REPLICAS
nginx-hpa   Deployment/nginx   0%/50%    2         5         2
```
