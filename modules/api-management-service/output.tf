output "name" {
  value = azurerm_api_management.openai.name
  sensitive = false
}

output "url" {
  value = azurerm_api_management.openai.management_api_url
  sensitive = false
}

output "dev_portal" {
  value = azurerm_api_management.openai.portal_url
  sensitive = false
}
