resource "azuredevops_project" "blog" {
  name               = "Livin La Infra Loca"
  visibility         = "private"
  version_control    = "Git"
  work_item_template = "Basic"
  description        = "Managed by Terraform"
  features = {
    "boards"       = "disabled"
    "repositories" = "disabled"
    "testplans"    = "disabled"
    "artifacts"    = "disabled"
  }
}
