data "azurerm_virtual_network" "network_1" {
  name                = var.network_1_name
  resource_group_name = var.network_1_resource_group
}

data "azurerm_virtual_network" "network_2" {
  name                = var.network_2_name
  resource_group_name = var.network_2_resource_group
}
