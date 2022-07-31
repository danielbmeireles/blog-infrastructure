# Azure DevOps

## Description

Codebase that will deploy all the Azure DevOps-related resources used by the blog.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | 0.2.2 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.16.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuredevops"></a> [azuredevops](#provider\_azuredevops) | 0.2.2 |

## Resources

| Name | Type |
|------|------|
| [azuredevops_project.blog](https://registry.terraform.io/providers/microsoft/azuredevops/0.2.2/docs/resources/project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azdo_org_service_url"></a> [azdo\_org\_service\_url](#input\_azdo\_org\_service\_url) | (Required) Azure DevOps organization URL | `string` | n/a | yes |
| <a name="input_azdo_personal_access_token"></a> [azdo\_personal\_access\_token](#input\_azdo\_personal\_access\_token) | (Required) Azure DevOps Personal Access Token (PAT) | `string` | n/a | yes |
| <a name="input_client_id"></a> [client\_id](#input\_client\_id) | (Required) Azure AD principal's client ID | `string` | n/a | yes |
| <a name="input_client_secret"></a> [client\_secret](#input\_client\_secret) | (Required) Azure AD principal's client secret | `string` | n/a | yes |
| <a name="input_subscription_id"></a> [subscription\_id](#input\_subscription\_id) | (Required) Azure subscription ID | `string` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | (Required) Azure tenant ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_blog_id"></a> [blog\_id](#output\_blog\_id) | The Project ID of the Project |
| <a name="output_blog_process_template_id"></a> [blog\_process\_template\_id](#output\_blog\_process\_template\_id) | The Process Template ID used by the Project |

# License

This code is distributed under the terms of the [MIT license](../../LICENSE).
