# terraform.tfvars for Dev environment
resource_groups = {
	rg1 = {
		rg_name  = "rg-monolithic-app-dev-1"
		location = "East US"
	}
}

virtual_networks = {
	vnet1 = {
		vnet_name           = "vnet-dev-1"
		address_space       = ["10.0.0.0/16"]
		location            = "East US"
		resource_group_name = "rg-monolithic-app-dev-1"
	}

}

subnets = {
	subnet1 = {
		subnet_name           = "subnet-dev-1"
		address_prefixes      = ["10.0.1.0/24"]
		resource_group_name   = "rg-monolithic-app-dev-1"
		virtual_network_name  = "vnet-dev-1"
	}
	subnet2 = {
		subnet_name           = "subnet-dev-2"
		address_prefixes      = ["10.1.1.0/24"]
		resource_group_name   = "rg-monolithic-app-dev-2"
		virtual_network_name  = "vnet-dev-2"
	}
}
