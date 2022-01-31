output "network_security_group" {
  value = azurerm_network_security_group.module_nsg
}

output "subnet" {
  value = azurerm_network_security_group.module_subnet
}

output "virtual_network" {
  value = azurerm_virtual_network.module_vnet
}