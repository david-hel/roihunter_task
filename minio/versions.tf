terraform {
  required_version = ">= 1.0"

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.3"
    }
    
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.9.0"
    }
    
    utils = {
      source  = "cloudposse/utils"
      version = ">= 0.14.0"
    }
  }
}

provider "google" {
  credentials = file("../devops-task.json")
  project     = "devops-task-363309"
  region      = "europe-west1"
}