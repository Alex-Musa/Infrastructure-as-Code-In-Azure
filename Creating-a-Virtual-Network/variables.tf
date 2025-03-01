variable "subscriptionID" {
    type = string
  description = "The Azure subscription ID"
}

variable "resourceGroupName" {
    type = string
  description = "The name of the resource group in which to create the virtual network"
}

variable "location" {
    type = string
  description = "The location/region in which the virtual network will be created"
}