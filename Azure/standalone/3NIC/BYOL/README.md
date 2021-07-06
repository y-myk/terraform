## terraform-azure-big-ip

This solution uses a Terraform "azurerm_resource_group_template_deployment" resource to launch a standalone 3-NIC BIG-IP VE in Microsoft Azure from the following ARM template https://github.com/F5Networks/f5-azure-arm-templates/tree/v9.5.0.0/supported/standalone/3nic/existing-stack/byol

## Version

This template is tested in the following version: Terraform v1.0.1

Provider required by configuration:

+ provider[registry.terraform.io/hashicorp/azurerm] 2.46.0

## Prerequisites

Since this is existing stack deployment, Resource Group, VNet, and subnets needs to be created in Azure. These resources are created using terraform "azurerm_resource_group" resource and module "vnet". Details in "create-rg-and-subnets.tf" file.

Also make sure that azuredeploy.json file from https://github.com/F5Networks/f5-azure-arm-templates/blob/v9.5.0.0/supported/standalone/3nic/existing-stack/byol/azuredeploy.json is present in the same directory where terraform project files are located.

## Installation

```
git clone https://github.com/y-myk/terraform-aws-ha.git
cd terraform/Azure/standalone/3NIC/BYOL
```

Modify variables in variables.tf. Then run:

```
terraform init
terraform plan
terraform apply
```

## Authentication

This solution requires access to the Azure API.

Terraform supports a number of different methods for authenticating to Azure. This solution relies on authenticating to Azure using the Azure CLI. Once you are logged in to the Azure CLI, configure Terraform to use Azure CLIcredentials. Details: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/azure_cli
