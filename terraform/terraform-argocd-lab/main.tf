terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.38.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

data "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}
