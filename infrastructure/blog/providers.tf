terraform {
  required_version = ">= 1.2"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.16.0"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.1.1"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-blog-terraform-backend"
    storage_account_name = "straccterraform17772"
    container_name       = "terraform-remote-state"
    key                  = "blog.tfstate"
  }
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
