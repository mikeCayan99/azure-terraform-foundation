resource "azurerm_resource_group" "rg" {
  name     = "rg-dev-demo"
  location = var.location
}

resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-dev-demo"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.0.0.0/16"]
}