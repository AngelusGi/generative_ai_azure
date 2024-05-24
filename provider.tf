terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = var.state_rg_name
    storage_account_name = var.state_storage_name
    container_name       = var.state_container_name
    key                  = "genai.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
}