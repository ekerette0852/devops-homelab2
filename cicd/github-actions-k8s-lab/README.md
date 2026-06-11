# GitHub Actions Kubernetes CI/CD Lab

## Objective

Build a CI/CD pipeline that automatically builds a Docker image when code is pushed to GitHub.

## Components

- GitHub Actions
- Docker
- Kubernetes Deployment
- Kubernetes Service
- NGINX

## Project Structure

```text
app/
├── Dockerfile
└── index.html

k8s/
├── deployment.yaml
└── service.yaml

.github/workflows/
└── build.yml
```

## Workflow

1. Developer pushes code to GitHub
2. GitHub Actions triggers automatically
3. Docker image is built
4. Image can be pushed to Docker Hub
5. Kubernetes deploys updated image

## Learning Outcomes

- CI/CD fundamentals
- GitHub Actions workflows
- Docker image automation
- Kubernetes deployment automation
