variable "location" {
  description = "The location of resources"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "my-resource-group"
}

variable "network_address_space" {
  description = "The address space for the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_prefix" {
  description = "The prefix for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "admin_username" {
  description = "Admin username for VMs"
  type        = string
}

variable "admin_password" {
  description = "Admin password for VMs"
  type        = string
  sensitive   = true
}

variable "admin_ssh_key" {
  type        = string
  description = "SSH public key for the VM admin user"
}

variable "resource_group_name_prefix" {
  description = "Prefix for resource group name"
  type        = string
}

variable "resource_group_id" {
  description = "ID of the resource group"
  type        = string
}