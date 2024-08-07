terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.114.0"
    }
  }
}

provider "azurerm" {
    subscription_id = "1cbd70a5-1547-4183-846f-12003f04578c"
    features {}
}