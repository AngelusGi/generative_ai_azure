variable "name" {
  description = "The name of the API Management Service name."
  type        = string

}

variable "customer_name" {
  description = "The name of the customer."
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group in which the API Management Service should be created."
  type        = string
}

variable "location" {
  description = "The Azure region in which the API Management Service should be created."
  type        = string
}

variable "admin_email" {
  description = "The email of the API Management Service administrator in Dev Portal."
  type        = string


  validation {
    condition     = can(regex("^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$", var.admin_email))
    error_message = "The admin_email must be a valid email address."
  }
}

variable "sku" {
  description = "The name of the API Management Service sku."
  type        = string
  default     = "Developer"

  validation {
    condition     = contains(["Developer", "Basic", "Standard"], var.sku)
    error_message = "The sku must be either 'Developer', 'Basic', or 'Standard'."
  }
}

variable "capacity" {
  description = "The number of the API Management Service capacity."
  type        = number
  default     = 1

  validation {
    condition     = var.capacity >= 1 && var.capacity <= 12
    error_message = "capacity must be between 1 and 12."
  }
}

variable "tags" {
  nullable = false
}
