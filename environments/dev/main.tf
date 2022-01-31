terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.93.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

}



module "network" {
  depends_on = [
    module.resource_group
  ]
  source = "../../modules/networking"

  resource_group = module.resource_group.module_resource_group


}

module "resource_group" {
  source = "../../modules/resource_groups"
  
  network_resource_group_name = var.network_resource_group_name
  location = var.location

}