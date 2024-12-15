variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "subnet_id" {
  type = string
}

variable "admin_ssh_key" {
  type = string  
}

variable "resource_group_name_prefix" {
  description = "Prefix for the resource group name"
  type        = string
  default     = "rg"
}

variable "resource_group_id" {
  description = "ID of the resource group"
  type        = string
}