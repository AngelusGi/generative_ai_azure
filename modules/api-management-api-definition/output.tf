output "api_name" {
  value = azurerm_api_management_api.openai.name
  sensitive = false
}

output "api_url" {
  value = azurerm_api_management_api.openai.service_url
  sensitive = false
}

output "backend_url" {
  value = azurerm_api_management_backend.openai.url
  sensitive = false
}

output "backend_name" {
  value = azurerm_api_management_backend.openai.name
  sensitive = false
}
