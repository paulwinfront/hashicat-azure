provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "gaurav-rg"
  location = var.location
}

module "network" {
  source              = "Azure/network/azurerm"
  resource_group_name = azurerm_resource_group.example.name

  depends_on = [azurerm_resource_group.example]
}