terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.94.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.16.0"
    }

      backend "remote" {
    organization = "EmphasysPHA"
    workspaces {
      name = "test-DevOps-dsc-workspace" #"#{Octopus.Deployment.Tenant.Name}-#{Octopus.Environment.Name}-workspace"
    }
  }
}

provider "tfe" {
  token = var.token
}


provider "azurerm" {
  features {}

}