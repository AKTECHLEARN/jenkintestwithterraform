# variables.tf

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
  default     = "61c93cef-3378-4258-b3f6-98ce21be82e9"
}

variable "client_id" {
  description = "Azure Service Principal Client ID"
  type        = string
  default     = "bba2e01f-0279-46bd-ac9d-6222db327360"
}

variable "client_secret" {
  description = "Azure Service Principal Client Secret"
  type        = string
  default     = "h6Z8Q~~7P66AMkVFa~b7hpTB3bHGUtovifkTBat4"
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
  default     = "bf7f6c35-a901-4467-b2ac-46fff520f3fa"
}

