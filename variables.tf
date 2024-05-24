variable "rg_name" {
  description = "The name of the resource group in which the API Management Service should be created."
  type        = string

  validation {
    condition     = endswith(var.rg_name, "-rgp")
    error_message = "The rg_name must end with '-rgp'."
  }
}

variable "openai_name" {
  description = "Name of the OpenAI service"
  type        = string
}

variable "openai_sku" {
  description = "SKU of the OpenAI service"
  type        = string
}

# variable "customer_name" {
#   description = "Name of the customer"
#   type        = string
# }

variable "openai_model_name" {
  description = "Name of the OpenAI model"
  type        = string
}

variable "openai_model_version" {
  description = "Version of the OpenAI model"
  type        = string
}

variable "openai_model_type" {
  description = "Type of the OpenAI model"
  type        = string
}

variable "openai_deployment_name" {
  description = "Name of the OpenAI deployment"
  type        = string
}

variable "api_management_name" {
  description = "The name of the API Management Service name."
  type        = string
}

variable "api_management_admin_email" {
  description = "The name of the API Management Service admin email."
  type        = string
}

variable "api_management_customer_name" {
  description = "The name of the API Management Service Organization name."
  type        = string
}

variable "api_display_name" {
  description = "The name of the API display name."
  type        = string
}

variable "api_name" {
  description = "The name of the API name."
  type        = string
}

variable "api_path" {
  description = "The name of the API path."
  type        = string
}

variable "backend_url" {
  description = "The name of the API backend URL."
  type        = string
}
