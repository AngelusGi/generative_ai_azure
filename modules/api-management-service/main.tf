resource "azurerm_api_management" "openai" {
    location            = var.location
    resource_group_name = var.rg_name

    name                = var.name
    publisher_name      = var.customer_name
    publisher_email     = var.admin_email
    sku_name = "${var.sku}_${var.capacity}"

    tags = var.tags

}


