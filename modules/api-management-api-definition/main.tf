data "template_file" "json_api_definition" {
  template = file("${path.module}/openai-openapiv3.json")

  vars = {
    openai_url = var.backend_url
  }
}

resource "azurerm_api_management_backend" "openai" {
  resource_group_name = var.rg_name
  name                = var.backend_name
  api_management_name = var.api_management_name
  description         = var.backend_description
  url                 = var.backend_url
  protocol            = "http"

  tls {
    validate_certificate_chain = true
    validate_certificate_name  = true
  }
}

resource "azurerm_api_management_api" "openai" {
  resource_group_name   = var.rg_name
  name                  = var.api_name
  api_management_name   = var.api_management_name
  path                  = var.api_path
  display_name          = var.api_display_name
  subscription_required = var.subscription_required

  import {
    content_format = "openapi+json"
    # content_value  = file("openai-openapiv3.json")
    content_value = data.template_file.json_api_definition.rendered
  }

  protocols = ["https"]
  revision  = 1

  depends_on = [azurerm_api_management_backend.openai]
}
