resource "azurerm_resource_group" "rg" {
  location = "West Europe"
  name     = "rg-blog"

}

resource "azurerm_static_site" "blog" {
  name                = "livin-la-infra-loca"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_tier            = "Free"
  sku_size            = "Free"

  tags = {
    "ManagedBy" = "Terraform"
  }
}

resource "null_resource" "deployment_details" {
  depends_on = [
    azurerm_static_site.blog
  ]

  triggers = {
    trigger = timestamp()
  }

  provisioner "local-exec" {
    command = <<EOF
      az staticwebapp update \
        --name ${azurerm_static_site.blog.name} \
        --resource-group ${azurerm_resource_group.rg.name} \
        --branch main \
        --source ${var.static_site_repository_url} \
        --token ${var.static_site_repository_pat}
    EOF
  }
}
