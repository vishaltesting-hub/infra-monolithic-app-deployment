variable "resource_groups" {
  description = "A map of resource groups to create."
  type = map(object({
    rg_name   = string
    location  = string
  }))
}

variable "virtual_networks" {
  description = "A map of virtual networks to create."
  type = map(object({
    vnet_name           = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
  }))
}
variable "subnets" {
  description = "A map of subnets to create."
  type = map(object({
    subnet_name      = string
    address_prefixes = list(string)
  }))
}
# variables.tf for Dev environment

variable "rg_name" {
  description = "The name of the resource group."
  type        = string
}

variable "location" {
  description = "The Azure region for resources."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet."
  type        = string
}

variable "address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}
