resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}


module "virtualnetwork" {
  source  = "app.terraform.io/tsc_demo/virtualnetwork/azurerm"
  version = "1.0.0"
  name                = "example-vnet"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]
  tags                = {
    Environment = "Development"
    Project     = "Example"
  }

  # Optional variables
  # ddos_protection_plan_id = null
  # encryption              = "DropUnencrypted"
  # hub_vnet_name           = "hub-vnet"
  # hub_rg_name             = "hub-rg"
  # use_remote_gateway      = true
}