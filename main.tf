provider "azurerm" {
  alias = "src"
  features {}
}

provider "azurerm" {
  alias = "dst"
  features {}
}

###
# Resources
###

module "peering_src" {
  providers = {
    azurerm = azurerm.src
  }
  source = "./submodule"

  vnet_src_id = var.vnet_src_id
  vnet_dst_id = var.vnet_dst_id

}

module "peering_dst" {
  providers = {
    azurerm = azurerm.dst

  }
  source = "./submodule"

  vnet_src_id = var.vnet_dst_id
  vnet_dst_id = var.vnet_src_id

}
