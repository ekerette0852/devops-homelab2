terraform {
  required_version = ">= 1.8.0"
}

resource "local_file" "devops_homelab" {
  filename = "${path.module}/homelab.txt"
  content  = "Terraform is managing infrastructure as code for my DevOps homelab."
}
