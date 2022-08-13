resource "azuredevops_project" "blog" {
  name               = "Livin La Infra Loca"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Basic"
  description        = "Managed by Terraform"
  features = {
    "boards"       = "enabled"
    "repositories" = "disabled"
    "testplans"    = "disabled"
    "artifacts"    = "disabled"
  }
}

resource "azuredevops_serviceendpoint_azurerm" "azure" {
  project_id            = azuredevops_project.blog.id
  service_endpoint_name = "Azure Cloud"
  description           = "Managed by Terraform"
  credentials {
    serviceprincipalid  = var.client_id
    serviceprincipalkey = var.client_secret
  }
  azurerm_spn_tenantid      = var.tenant_id
  azurerm_subscription_id   = var.subscription_id
  azurerm_subscription_name = "Pay-As-You-Go"
}
