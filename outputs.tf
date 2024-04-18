output "resource_group_name" {
  value = azurerm_resource_group.mug_rg.name
  description = "The name of the resource group created."
}

output "purview_account_name" {
  value = azurerm_purview_account.mug_purview.name
  description = "The name of the Purview account created."
}

output "purview_account_id" {
  value = azurerm_purview_account.mug_purview.id
  description = "The resource ID of the Purview account."
}
