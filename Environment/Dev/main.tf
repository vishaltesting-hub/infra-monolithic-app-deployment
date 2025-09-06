module "rg" {
  source    = "../../Modules/azurerm_rg"
  rg_name   = "rg-monolithic-app-dev"
  location  = "East US"
  
}