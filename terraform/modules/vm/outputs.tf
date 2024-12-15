output "web_vm_ip" {
  value = azurerm_linux_virtual_machine.web_vm.public_ip_address
}

output "db_vm_ip" {
  value = [for db in azurerm_linux_virtual_machine.db_vm : db.public_ip_address]
}