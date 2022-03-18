module "hub_resource_group" {
  providers = {
    hub = azurerm.hub
  }
  source   = "git::https://github.com/FXinnovation/fx-terraform-module-azurerm-resource-group.git?ref=0.2.0"
  name     = "hub-resource-group"
  location = var.location
}

module "spoke_resource_group" {
  providers = {
    spoke = azurerm.spoke
  }
  source   = "git::https://github.com/FXinnovation/fx-terraform-module-azurerm-resource-group.git?ref=0.2.0"
  name     = "spoke-resource-group"
  location = var.location
}

module "hub_vnet" {
  providers = {
    hub = azurerm.hub
  }
  source              = "git::https://github.com/FXinnovation/fx-terraform-module-azurerm-virtualnetwork.git?ref=0.2.1"
  resource_group_name = module.hub_resource_group.name
  vnet_name           = var.hub_vnet_name
  vnet_address_space  = var.hub_vnet_address_space
}

module "spoke_vnet" {
  providers = {
    spoke = azurerm.spoke
  }
  source              = "git::https://github.com/FXinnovation/fx-terraform-module-azurerm-virtualnetwork.git?ref=0.2.1"
  resource_group_name = module.spoke_resource_group.name
  vnet_name           = var.spoke_vnet_name
  vnet_address_space  = var.spoke_vnet_address_space
}

module "hub-spoke-peering" {
  providers = {
    hub   = azurerm.hub
    spoke = azurerm.spoke
  }
  source = "../.."

  vnet_src_id = module.hub_vnet.virtual_network_id
  vnet_dst_id = module.spoke_vnet.virtual_network_id
}
