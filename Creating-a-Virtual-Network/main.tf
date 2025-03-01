# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "2.0.0"
#     }
#   }
# }

provider "azurerm" {
    subscription_id = var.subscriptionID

  features {}
}

resource "azurerm_resource_group" "AZ-700" {
    name     = var.resourceGroupName
    location = var.location
}

resource "azurerm_virtual_network" "AZ-700" {
    name                = "AZ-700-VNet"
    resource_group_name = azurerm_resource_group.AZ-700.name
    location            = azurerm_resource_group.AZ-700.location
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["8.8.8.8", "8.8.4.4"]

    tags = {
        environment = "dev"
    }
}

