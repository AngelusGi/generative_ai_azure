output "endpoint" {
  value = azurerm_cognitive_account.openai.endpoint
  sensitive = false
}

output "access_key" {
  value = azurerm_cognitive_account.openai.primary_access_key
  sensitive = true
}

output "gpt_name" {
  value = azurerm_cognitive_deployment.gpt.name
  sensitive = false
}

output "openai_name" {
  value = azurerm_cognitive_account.openai.name
  sensitive = false
}
