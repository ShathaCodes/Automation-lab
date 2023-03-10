terraform {
    required_version = "~>1.1.7"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>3.31.0"
        }
    }
    backend "azurerm" {
    resource_group_name  = "automation"
    storage_account_name = "gl5"
    container_name       = "infra-state"
    key                  = "dev.terraform.tfstate"
  }
}


provider "azurerm" {
    features {}
}