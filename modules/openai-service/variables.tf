variable "name" {
  description = "The name of the OpenAI service"
  type        = string
}

variable "sku" {
  default = "S0"

  validation {
    condition     = contains(["S0", "Free"], var.sku)
    error_message = "The openai_apim_SKU must be either 'S0 (Standard)' or 'Free'."
  }
}

variable "tags" {
  nullable = false
}

variable "rg_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "public_network_access_enabled" {
  description = "Whether public network access is allowed for the Azure OpenAi service."
  default     = true
}

variable "openai_model_name" {
  description = "The name of the OpenAI model"
  type        = string
  default     = "gpt-35-turbo"
}

variable "openai_model_version" {
  description = "The version of the OpenAI model"
  type        = string
  default     = "0613"
}

variable "openai_model_type" {
  description = "The type of the OpenAI model"
  type        = string
  default     = "Standard"
}

variable "deployment_name" {
  description = "The display name of the OpenAI deployment"
  type        = string
  default     = "mypersonalassistant"
}
