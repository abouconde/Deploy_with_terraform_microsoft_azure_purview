resource "azurerm_resource_group" "mug_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_purview_account" "mug_purview" {
  name                = var.purview_account_name
  resource_group_name = azurerm_resource_group.mug_rg.name
  location            = azurerm_resource_group.mug_rg.location

  identity {
    type = "SystemAssigned"
  }

  tags = {
    environment = "production"
  }
}
