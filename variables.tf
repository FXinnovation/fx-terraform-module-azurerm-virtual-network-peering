###############
#
# SRC PEER CONF
#
###############

variable "vnet_src_id" {
  description = "ID of the src vnet to peer"
  type        = string
}

variable "vnet_src_tenant_id" {
  description = "Tenant ID of the src vnet to peer"
  default     = ""
}

variable "use_remote_src_gateway" {
  description = "Option use_remote_gateway for the src vnet to peer. Controls if remote gateways can be used on the local virtual network. https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#use_remote_gateways"
  default     = false
}

variable "custom_peering_src_name" {
  description = "Custom name of the vnet peerings to create"
  default     = ""
}

variable "src_allow_virtual_network_access" {
  description = "Enable it if you want to block traffic from the remote peered vnet"
  default     = false
}

variable "src_allow_forwarded_traffic" {
  description = ""
  default     = false
}

variable "src_allow_gateway_transit" {
  description = ""
  default     = false
}

variable "src_use_remote_gateways" {
  description = ""
  default     = false
}


################
#
# dst PEER CONF
#
################

variable "vnet_dst_id" {
  description = "ID of the dst vnet to peer"
  type        = string
}

variable "vnet_dst_tenant_id" {
  description = "Tenant ID of the dst vnet to peer"
  default     = ""
}

variable "use_remote_dst_gateway" {
  description = "Option use_remote_gateway for the dst vnet to peer. Controls if remote gateways can be used on the local virtual network. https://www.terraform.io/docs/providers/azurerm/r/virtual_network_peering.html#use_remote_gateways"
  default     = false
}

variable "custom_peering_dst_name" {
  description = "Custom name of the vnet peerings to create"
  default     = ""
}

variable "dst_allow_virtual_network_access" {
  description = ""
  default     = false
}

variable "dst_allow_forwarded_traffic" {
  description = ""
  default     = false
}

variable "dst_allow_gateway_transit" {
  description = ""
  default     = false
}

variable "dst_use_remote_gateway" {
  description = ""
  default     = false
}
