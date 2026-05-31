# Terraform Block
terraform {
  required_version = ">= 0.15"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "1.44.0"
      #version = ">= 2.0" 
    }
    random = {
      source = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

# Provider Block
provider "azurerm" {
  features {}

  subscription_id = "c4a513f4-578d-4bad-ae1c-acb91a74ded8"
  tenant_id       = "a0ff2019-b898-4720-b59e-f483a4edb433"
}         


