# Module documentation: https://registry.terraform.io/modules/Azure/vnet/azurerm/latest

# Create Resource Group
resource "azurerm_resource_group" "rg02" {
  name     = var.rg_name
  location = var.location
}

# Create VNET and subnets
module "vnet" {
  source              = "Azure/vnet/azurerm"
  version = "2.5.0"
  vnet_name = var.vnetName
  resource_group_name = azurerm_resource_group.rg02.name
  address_space       = [var.vnet_address_space]
  subnet_prefixes     = [var.subnet1_range, var.subnet2_range, var.subnet3_range]
  subnet_names        = [var.subnet1, var.subnet2, var.subnet3]

  tags = {
    environment = "gslab"
    costcenter  = "es"
  }

  depends_on = [azurerm_resource_group.rg02]
}

