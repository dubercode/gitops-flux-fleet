terraform {
  required_version = ">= 1.5.0"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.23.0"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}

resource "kubernetes_namespace" "flux_system" {
  metadata {
    name = var.kubernetes_namespace
  }
}

resource "kubernetes_namespace" "app_dev" {
  metadata {
    name = "app-dev"
  }
}

resource "kubernetes_namespace" "app_staging" {
  metadata {
    name = "app-staging"
  }
}

resource "kubernetes_namespace" "app_prod" {
  metadata {
    name = "app-prod"
  }
}