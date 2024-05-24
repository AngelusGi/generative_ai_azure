resource "azurerm_cognitive_account" "openai" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  kind                = "OpenAI"

  sku_name = var.sku

  tags = var.tags

  public_network_access_enabled = var.public_network_access_enabled
}

resource "azurerm_cognitive_deployment" "gpt" {
  name                 = var.deployment_name
  cognitive_account_id = azurerm_cognitive_account.openai.id

  model {
    format  = "OpenAI"
    name    = var.openai_model_name
    version = var.openai_model_version
  }

  scale {
    type = var.openai_model_type
  }
}
