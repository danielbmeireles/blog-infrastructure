# Azure-specific variables

variable "client_id" {
  type        = string
  description = "(Required) Azure AD principal's client ID"
  nullable    = false
}

variable "client_secret" {
  type        = string
  description = "(Required) Azure AD principal's client secret"
  nullable    = false
  sensitive   = true
}

variable "subscription_id" {
  type        = string
  description = "(Required) Azure subscription ID"
  nullable    = false
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "(Required) Azure tenant ID"
  nullable    = false
  sensitive   = true
}

# Azure DevOps-specific variables
variable "azdo_org_service_url" {
  type        = string
  description = "(Required) Azure DevOps organization URL"
  nullable    = false
}

variable "azdo_personal_access_token" {
  type        = string
  description = "(Required) Azure DevOps Personal Access Token (PAT)"
  nullable    = false
}
