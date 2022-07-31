terraform {
  required_version = ">= 1.2"

  required_providers {
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "0.2.2"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.16.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-blog-terraform-backend"
    storage_account_name = "straccterraform17772"
    container_name       = "terraform-remote-state"
    key                  = "azuredevops.tfstate"
  }
}

provider "azuredevops" {
  org_service_url       = var.azdo_org_service_url
  personal_access_token = var.azdo_personal_access_token
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
    template_deployment {
      delete_nested_items_during_deletion = true
    }
  }

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
