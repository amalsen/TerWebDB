output "web_vm_ip" {
  value = module.vm.web_vm_ip
}

output "db_vm_ips" {
  value = module.vm.db_vm_ip
}

output "loadbalancer_ip" {
  value = module.loadbalancer.lb_ip
}