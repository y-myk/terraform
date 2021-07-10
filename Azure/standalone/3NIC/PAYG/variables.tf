variable "rg_name" { default = "terraform-rg02" }
variable "location" { default = "West Europe" }

variable "vnet_address_space" { default = "10.1.0.0/16" }

variable "subnet1" { default = "mgmt" }
variable "subnet2" { default = "external" }
variable "subnet3" { default = "internal" }

variable "subnet1_range" { default = "10.1.0.0/24" }
variable "subnet2_range" { default = "10.1.1.0/24" }
variable "subnet3_range" { default = "10.1.2.0/24" }

variable "adminUsername" { default = "azureuser" }
variable "authenticationType" { default = "password" }
variable "adminPasswordOrKey" { default = "De5TgY7*i(hJ" }
variable "dnsLabel" { default = "three-nic-payg" }
variable "instanceName" { default = "3nic-payg" }
variable "instanceType" { default = "Standard_DS3_v2" }
variable "imageName" { default = "Best25Mbps" }
variable "bigIpVersion" { default = "16.0.101000" }
variable "bigIpModules" { default = "ltm:nominal" }
variable "numberOfExternalIps" { default = 1 }
variable "vnetName" { default = "vnet01" }
variable "vnetResourceGroupName" { default = "terraform-rg02" }
variable "mgmtSubnetName" { default = "mgmt" }
variable "mgmtIpAddress" { default = "DYNAMIC" }
variable "externalSubnetName" { default = "external" }
variable "externalIpAddressRangeStart" { default = "DYNAMIC" }
variable "internalSubnetName" { default = "internal" }
variable "internalIpAddress" { default = "DYNAMIC" }
variable "avSetChoice" { default = "CREATE_NEW" }
variable "zoneChoice" { default = "1" }
variable "provisionPublicIP" { default = "Yes" }
variable "declarationUrl" { default = "NOT_SPECIFIED" }
variable "ntpServer" { default = "0.pool.ntp.org" }
variable "timeZone" { default = "UTC" }
variable "customImageUrn" { default = "OPTIONAL" }
variable "customImage" { default = "OPTIONAL" }
variable "restrictedSrcAddress" { default = "*" }
variable "allowUsageAnalytics" { default = "No" }
