
data "azurerm_resource_group" "openai" {
  name = var.rg_name
}

module "openai_service" {
  source = "./modules/openai-service"

  rg_name  = data.azurerm_resource_group.openai.name
  location = data.azurerm_resource_group.openai.location
  tags     = data.azurerm_resource_group.openai.tags

  name                 = var.openai_name
  sku                  = var.openai_sku
  openai_model_name    = var.openai_model_name
  openai_model_version = var.openai_model_version
  openai_model_type    = var.openai_model_type
  deployment_name      = var.openai_deployment_name

  depends_on = [data.azurerm_resource_group.openai]

}

module "apim_service" {
  source = "./modules/api-management-service"

  rg_name  = data.azurerm_resource_group.openai.name
  location = data.azurerm_resource_group.openai.location
  tags     = data.azurerm_resource_group.openai.tags

  name          = var.api_management_name
  admin_email   = var.api_management_admin_email
  customer_name = var.api_management_customer_name

  depends_on = [data.azurerm_resource_group.openai, module.openai_service]

}

module "openai-api-definition" {
  source              = "./modules/api-management-api-definition"
  api_display_name    = var.api_display_name
  api_name            = var.api_name
  api_path            = var.api_path
  backend_url         = var.backend_url
  api_management_name = var.api_management_name

  rg_name  = data.azurerm_resource_group.openai.name
  location = data.azurerm_resource_group.openai.location

  depends_on = [data.azurerm_resource_group.openai, module.openai_service, module.apim_service]
}
