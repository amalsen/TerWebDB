output "lb_ip" {
  value = azurerm_lb.db_lb.frontend_ip_configuration[0].public_ip_address_id
}