resource "azurerm_virtual_network_peering" "virtual_network_peering-1" {
  name                         = format("%s_to_%s", var.network_1_name, var.network_2_name)
  resource_group_name          = var.network_1_resource_group
  virtual_network_name         = var.network_1_name
  remote_virtual_network_id    = data.azurerm_virtual_network.network_2.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  allow_gateway_transit        = true
}

resource "azurerm_virtual_network_peering" "virtual_network_peering-2" {
  name                         = format("%s_to_%s", var.network_2_name, var.network_1_name)
  resource_group_name          = var.network_2_resource_group
  virtual_network_name         = var.network_2_name
  remote_virtual_network_id    = data.azurerm_virtual_network.network_1.id
  allow_virtual_network_access = true
  allow_forwarded_traffic      = true
  use_remote_gateways          = true
}