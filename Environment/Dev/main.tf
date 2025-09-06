
module "rg" {
  source    = "../../Modules/azurerm_rg"
  for_each  = var.resource_groups
  rg_name   = each.value.rg_name
  location  = each.value.location
}


module "vnet" {
  source                = "../../Modules/azurerm_vnet"
  for_each              = var.virtual_networks
  vnet_name             = each.value.vnet_name
  address_space         = each.value.address_space
  location              = each.value.location
  resource_group_name   = each.value.resource_group_name
  depends_on            = [module.rg]
}



module "subnet" {
  source                = "../../Modules/azurerm_subnet"
  for_each              = var.subnets
  subnet_name           = each.value.subnet_name
  resource_group_name   = each.value.resource_group_name
  virtual_network_name  = each.value.virtual_network_name
  address_prefixes      = each.value.address_prefixes
  depends_on            = [module.vnet]
}