###
# Resources
###

resource "azurerm_virtual_network_peering" "peering" {
  name = coalesce(
    var.custom_peering_dst_name,
    format("peering-to-%s", local.vnet_dst_name),
  )
  resource_group_name          = local.vnet_src_resource_group_name
  virtual_network_name         = local.vnet_src_name
  remote_virtual_network_id    = var.vnet_dst_id
  allow_virtual_network_access = var.src_allow_virtual_network_access
  allow_forwarded_traffic      = var.src_allow_forwarded_traffic
  allow_gateway_transit        = var.src_allow_gateway_transit
  use_remote_gateways          = var.src_use_remote_gateways
}
