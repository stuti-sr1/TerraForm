# Configure the Azure provider

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "StutiSrTF-RG"
  location = "westus2"

  tags = {
        Environment = "Terraform Getting Started Test"
        Team = "Development"
    }
}