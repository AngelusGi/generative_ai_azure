variable "backend_name" {
  description = "The name of the API backend."
  type        = string
  default     = "openai-backend"
}

variable "backend_description" {
  description = "The description of the API backend."
  type        = string
  default     = "OpenAI Backend"
}

variable "backend_url" {
  description = "The URL of the API backend host."
  type        = string
}

variable "api_name" {
  description = "The name of the API name."
  type        = string
  default     = "azure-openai-service-api"
}

variable "api_display_name" {
  description = "The name of the API name."
  type        = string
  default     = "Azure OpenAI Service API"
}

variable "api_path" {
  description = "The path of the API."
  type        = string
  default     = "openai"
}

variable "api_management_name" {
  description = "The name of the API Management instance name."
  type        = string
}

variable "subscription_required" {
  type    = bool
  default = true
}

variable "rg_name" {
  description = "The name of the resource group in which the API Management Service should be created."
  type        = string
}

variable "location" {
  description = "The Azure region in which the API Management Service should be created."
  type        = string
}
