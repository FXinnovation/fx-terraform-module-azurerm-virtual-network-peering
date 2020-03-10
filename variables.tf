variable "enabled" {
  description = "Enable or disable module"
  default     = true
}

variable "vnet_src_id" {
  description = "ID of the src vnet to peer"
  default     = ""
}

variable "vnet_src_tenant_id" {
  description = "Tenant ID of the src vnet to peer"
  default     = ""
}

variable "custom_peering_src_name" {
  description = "Custom name of the vnet peerings to create"
  default     = ""
}

variable "src_allow_virtual_network_access" {
  description = "Enable it if you want to block traffic from the remote peered vnet"
  default     = true
}

variable "src_allow_forwarded_traffic" {
  description = "Enable it if you want to enable the forwarded traffic from the local vnet"
  default     = false
}

variable "src_allow_gateway_transit" {
  description = "Enable it if the local vnet has a gateway and you want to allow the remote peering to use that gateway for on-prem transit (hub)"
  default     = false
}

variable "src_use_remote_gateways" {
  description = "Enable it if you want to use the remmote vnet gateway for on-prem transit (spoke)"
  default     = false
}

variable "vnet_dst_id" {
  description = "ID of the dst vnet to peer"
  default     = ""
}

variable "vnet_dst_tenant_id" {
  description = "Tenant ID of the dst vnet to peer"
  default     = ""
}

variable "custom_peering_dst_name" {
  description = "Custom name of the vnet peerings to create"
  default     = ""
}

variable "dst_allow_virtual_network_access" {
  description = "Enable it if you want to block traffic from the remote peered vnet"
  default     = true
}

variable "dst_allow_forwarded_traffic" {
  description = "Enable it if you want to enable the forwarded traffic from the local vnet"
  default     = false
}

variable "dst_allow_gateway_transit" {
  description = "Enable it if the local vnet has a gateway and yo uwant to allow the remote peering to use that gateway for on-prem transit (hub)"
  default     = false
}

variable "dst_use_remote_gateway" {
  description = "Enable it if you want to use the remmote vnet gateway for on-prem transit (spoke)"
  default     = false
}
