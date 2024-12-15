resource "azurerm_resource_group" "main" {
  name     = "my-resource-group"
  location = var.location
}

module "network" {
  source = "./modules/network"

  location           = var.location
  resource_group_name = azurerm_resource_group.main.name
  address_space      = var.network_address_space
  subnet_prefix      = var.subnet_prefix
}

module "vm" {
  source = "./modules/vm"

  location           = var.location
  resource_group_name = azurerm_resource_group.main.name
  admin_username     = var.admin_username
  admin_password     = var.admin_password
  subnet_id          = module.network.subnet_id
  admin_ssh_key      = var.admin_ssh_key
  resource_group_id         = azurerm_resource_group.main.id
  resource_group_name_prefix = azurerm_resource_group.main.name
#  resource_group_id  = azurerm_resource_group.main.id
}

module "loadbalancer" {
  source = "./modules/loadbalancer"

  location           = var.location
  resource_group_name = azurerm_resource_group.main.name
  backend_ip_address = [module.vm.db_vm_ip[0], module.vm.db_vm_ip[1]]
}

# var.resource_group_name