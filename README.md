# DevOps Coding Assessment: Ruby on Rails Budget App Deployment

This repository contains the end-to-end implementation of a DevOps project deploying a containerized Ruby on Rails application with PostgreSQL using Docker, Kubernetes, ArgoCD (GitOps), and Tekton (CI/CD).

---

## 📁 Project Structure

├── argocd
│ ├── README.md # Documentation for ArgoCD setup
│ ├── application.yaml # ArgoCD application declaration
│ ├── config
│ │ ├── argocd-cm.yaml # ArgoCD ConfigMap for custom settings
│ │ └── argocd-rbac-cm.yaml # ArgoCD RBAC ConfigMap
│ └── manifests
│ ├── budget-app-deployment.yaml # Kubernetes deployment for Rails app
│ ├── ingress.yaml # Ingress configuration
│ ├── postgres-statefulset.yaml # StatefulSet for PostgreSQL
│ ├── rails-service.yaml # Service for Rails app
│ └── services.yaml # Additional services
├── k8s
│ ├── budget-app-deployment.yaml # Same as above, for standalone K8s testing
│ ├── ingress.yaml
│ ├── postgres-statefulset.yaml
│ ├── rails-service.yaml
│ └── services.yaml
└── tekton
├── git-clone-task.yaml # Task to clone repo
├── kaniko-task.yaml # Task to build & push Docker image
├── pipeline.yaml # Tekton Pipeline definition
├── pipelinerun.yaml # PipelineRun config
└── pvc.yaml # Persistent Volume Claim for workspace

yaml
Copy
Edit

---

## 🔧 Technologies Used

- **Docker**: Containerizes the Ruby on Rails app and PostgreSQL DB.
- **Kubernetes (Minikube)**: Hosts the app and DB with proper YAML configurations (StatefulSet, Services, Ingress).
- **ArgoCD**: Implements GitOps-based deployment and configuration management.
- **Tekton Pipelines**: CI/CD system to clone the app repo, build a Docker image, and push it to Docker Hub.

---

## 📝 Step Overview

### Step 1: Docker
- Dockerfiles created to containerize Rails + PostgreSQL in separate containers.

### Step 2: Kubernetes
- YAML files for Deployments, StatefulSet, Services, and Ingress.
- PostgreSQL deployed using `StatefulSet`.
- App exposed via NGINX Ingress.

### Step 3: ArgoCD
- GitOps-managed deployment using ArgoCD.
- `application.yaml` defines the app.
- ConfigMaps and RBAC configured for secure ArgoCD setup.
- Kubernetes manifests placed under `argocd/manifests/`.

### Step 4: Tekton
- Pipeline to automate build and push using `kaniko`.
- Task to clone public repo, build image and push to Docker Hub.
- Manually triggered from Tekton Dashboard.

ANUJ VERMA
9350106012
vanuj447@gmail.com
https://linkedin.com/in/anuj-verma-998b231b7
