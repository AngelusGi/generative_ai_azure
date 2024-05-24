output "name" {
  value = azurerm_api_management.openai.name
  sensitive = false
}

output "url" {
  value = azure_api_management.openai.management_api_url
  sensitive = false
}

output "dev_portal" {
  value = azure_api_management.openai.portal_url
  sensitive = false
}

output "openai_name" {
  value = azurerm_cognitive_account.openai.name
  sensitive = false
}
