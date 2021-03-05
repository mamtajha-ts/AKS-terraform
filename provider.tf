# Configure the Azure Provider
#provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
 # version = "~> 1.32"
#}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
