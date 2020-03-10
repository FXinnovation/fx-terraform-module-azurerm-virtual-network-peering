module "src-dst-peering" {
  providers = {
    azurerm.src = azurerm.source
    azurerm.dst = azurerm.destination
  }
  source = "../.."

  enabled = false
}
