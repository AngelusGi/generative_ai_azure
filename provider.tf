terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "testdevops"
    storage_account_name = "testdevopsavd"
    container_name       = "devops-terraform"
    key                  = "genai_test2.tfstate"
  }
}

provider "azurerm" {
  features {
    
  }
}