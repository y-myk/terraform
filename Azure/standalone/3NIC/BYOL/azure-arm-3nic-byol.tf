resource "azurerm_resource_group_template_deployment" "bigip_3nic_byol" {
  name                = "bigip_3nic_byol"
  resource_group_name = var.rg_name
  deployment_mode     = "Incremental"
  template_content    = file("${path.module}/azuredeploy.json")

  parameters_content = jsonencode({
    "adminUsername" = {
      value = var.adminUsername
    }
    "authenticationType" = {
      value = var.authenticationType
    }
    "adminUsername" = {
      value = var.adminUsername
    }
    "adminPasswordOrKey" = {
      value = var.adminPasswordOrKey
    }
    "dnsLabel" = {
      value = var.dnsLabel
    }
    "instanceName" = {
      value = var.instanceName
    }
    "instanceType" = {
      value = var.instanceType
    }
    "imageName" = {
      value = var.imageName
    }
    "bigIpVersion" = {
      value = var.bigIpVersion
    }
    "bigIpModules" = {
      value = var.bigIpModules
    }
    "licenseKey1" = {
      value = var.licenseKey1
    }
    "numberOfExternalIps" = {
      value = var.numberOfExternalIps
    }
    "vnetName" = {
      value = var.vnetName
    }
    "vnetResourceGroupName" = {
      value = var.vnetResourceGroupName
    }
    "mgmtSubnetName" = {
      value = var.mgmtSubnetName
    }
    "mgmtIpAddress" = {
      value = var.mgmtIpAddress
    }
    "externalSubnetName" = {
      value = var.externalSubnetName
    }
    "externalIpAddressRangeStart" = {
      value = var.externalIpAddressRangeStart
    }
    "internalSubnetName" = {
      value = var.internalSubnetName
    }
    "internalIpAddress" = {
      value = var.internalIpAddress
    }
    "avSetChoice" = {
      value = var.avSetChoice
    }
    "zoneChoice" = {
      value = var.zoneChoice
    }
    "provisionPublicIP" = {
      value = var.provisionPublicIP
    }
    "declarationUrl" = {
      value = var.declarationUrl
    }
    "ntpServer" = {
      value = var.ntpServer
    }
    "timeZone" = {
      value = var.timeZone
    }
    "customImageUrn" = {
      value = var.customImageUrn
    }
    "customImage" = {
      value = var.customImage
    }
    "restrictedSrcAddress" = {
      value = var.restrictedSrcAddress
    }
    "allowUsageAnalytics" = {
      value = var.allowUsageAnalytics
    }
  })

  depends_on = [module.vnet]
}
