module "rg" {
  source    = "../../Modules/azurerm_rg"
  rg_name   = "rg-monolithic-app-dev"
  location  = "East US"
  
}

module "vnet" {
  source                = "../../Modules/azurerm_vnet"
  vnet_name             = "vnet-dev"
  address_space         = ["10.0.0.0/16"]
  location              = module.rg.location
  resource_group_name   = module.rg.rg_name
  depends_on            = [module.rg]
}

module "subnet" {
  source                = "../../Modules/azurerm_subnet"
  subnet_name           = "subnet-dev"
  resource_group_name   = module.rg.rg_name
  virtual_network_name  = module.vnet.vnet_name
  address_prefixes      = ["10.0.1.0/24"]
  depends_on            = [module.vnet]
}