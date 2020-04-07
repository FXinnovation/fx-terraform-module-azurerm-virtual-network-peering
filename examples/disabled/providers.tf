provider "azurerm" {
  features {}
  version         = ">= 2.0.0"
  alias           = "source"
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

provider "azurerm" {
  features {}
  version         = ">= 2.0.0"
  alias           = "destination"
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}
