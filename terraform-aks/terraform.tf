terraform {
    required_version = "~>1.1.7"
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version = "~>3.31.0"
        }
        kubernetes = {
            source = "hashicorp/kubernetes"
            version = "~>2.16.0"
        }
         helm = {
            source = "hashicorp/helm"
            version = "2.8.0"
        }
    }
}
provider "azurerm" {
  features {}
}