resource "random_string" "this" {
  length  = 6
  upper   = false
  special = false
}

module "src_resource_group" {
  providers = {
    azurerm = azurerm.source
  }
  source   = "git::https://scm.dazzlingwrench.fxinnovation.com/fxinnovation-public/terraform-module-azurerm-resource-group.git?ref=0.2.0"
  name     = "source-resource-group-${random_string.this.result}"
  location = "canadaeast"
}

module "dst_resource_group" {
  providers = {
    azurerm = azurerm.destination
  }
  source   = "git::https://scm.dazzlingwrench.fxinnovation.com/fxinnovation-public/terraform-module-azurerm-resource-group.git?ref=0.2.0"
  name     = "destination-resource-group-${random_string.this.result}"
  location = "canadaeast"
}

module "src_vnet" {
  providers = {
    azurerm = azurerm.source
  }
  source              = "git::https://scm.dazzlingwrench.fxinnovation.com/fxinnovation-public/terraform-module-azurerm-virtualnetwork.git?ref=0.2.1"
  resource_group_name = module.src_resource_group.name
  vnet_name           = "hub-vnet-${random_string.this.result}"
  vnet_address_space  = ["10.1.0.0/24"]
}

module "dst_vnet" {
  providers = {
    azurerm = azurerm.destination
  }
  source              = "git::https://scm.dazzlingwrench.fxinnovation.com/fxinnovation-public/terraform-module-azurerm-virtualnetwork.git?ref=0.2.1"
  resource_group_name = module.dst_resource_group.name
  vnet_name           = "spoke-vnet-${random_string.this.result}"
  vnet_address_space  = ["10.2.0.0/24"]
}

module "src-dst-peering" {
  providers = {
    azurerm.src = azurerm.source
    azurerm.dst = azurerm.destination
  }
  source      = "../.."
  enabled     = false
  vnet_src_id = module.src_vnet.virtual_network_id
  vnet_dst_id = module.dst_vnet.virtual_network_id
}
