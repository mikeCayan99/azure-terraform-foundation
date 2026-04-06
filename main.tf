resource "azurerm_resource_group" "rg" {
  name     = "rg-dev-demo"
  location = var.location
}