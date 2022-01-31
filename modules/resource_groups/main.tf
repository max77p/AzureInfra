resource "azurerm_resource_group" "module_resource_group" {
  name     = var.network_resource_group_name
  location = var.location
}