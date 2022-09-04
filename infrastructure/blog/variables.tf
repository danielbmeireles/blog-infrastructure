# Azure-specific variables

variable "client_id" {
  type        = string
  description = "(Required) Azure AD principal's client ID."
  nullable    = false
}

variable "client_secret" {
  type        = string
  description = "(Required) Azure AD principal's client secret."
  nullable    = false
  sensitive   = true
}

variable "subscription_id" {
  type        = string
  description = "(Required) Azure subscription ID."
  nullable    = false
  sensitive   = true
}

variable "tenant_id" {
  type        = string
  description = "(Required) Azure tenant ID."
  nullable    = false
  sensitive   = true
}

# Azure Static Site-specific variables

variable "static_site_repository_url" {
  type        = string
  description = "(Required) URL for the repository of the static site."
  nullable    = false
}

variable "static_site_repository_pat" {
  type        = string
  description = <<EOF
    (Required) A user's GitHub repository token.
    This is used to setup the Github Actions workflow file and API secrets.
  EOF
  nullable    = false
  sensitive   = true
}
