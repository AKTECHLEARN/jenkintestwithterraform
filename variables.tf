variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
  default     = "my-resource-group"
}

variable "location" {
  description = "The Azure region where the Resource Group will be created"
  type        = string
  default     = "East US"
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "client_id" {
  description = "Azure Service Principal Client ID"
  type        = string
}

variable "client_secret" {
  description = "Azure Service Principal Client Secret"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}
