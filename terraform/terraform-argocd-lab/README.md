## Verification

### Terraform

```bash
terraform plan
```

Result:

```text
No changes. Your infrastructure matches the configuration.
```

### Kubernetes

```bash
kubectl get pods -n argocd
```

Terraform successfully connected to the Kubernetes cluster and verified the existing Argo CD namespace.

### Notes

Argo CD was previously installed in the cluster. Terraform was used to validate and interact with the existing deployment.
