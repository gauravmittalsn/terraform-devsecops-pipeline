terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.79.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "sg"
    storage_account_name = "gm1" 
    container_name = "gm12"
    key = "gm.terrform.tfstate"
  }
}
provider "azurerm" {
  features {}
}