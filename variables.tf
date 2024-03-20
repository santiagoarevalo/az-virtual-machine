variable "rg_name" {
  type        = string
  description = "Name of the resource group"
}

variable "vir_net" {
  type        = string
  description = "Name of the virtual network"
}

variable "subnet" {
  type        = string
  description = "Name of the subnet"
}

variable "pub_ip" {
  type        = string
  description = "Name of the public IP"
}

variable "net_sec_group" {
  type        = string
  description = "Name of the network security group"
}

variable "net_interface" {
  type        = string
  description = "Name of the network interface"
}

variable "location" {
  type        = string
  description = "Location of the resources"
}

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
}

