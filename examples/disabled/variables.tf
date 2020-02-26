variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "location" {
  description = ""
  default     = "canadaeast"
}

variable "src_vnet_name" {
  description = ""
  default     = "hub-vnet"
}

variable "src_vnet_address_space" {
  description = ""
  default     = ["10.1.0.0/24"]
}

variable "dst_vnet_name" {
  description = ""
  default     = "spoke-vnet"
}

variable "dst_vnet_address_space" {
  description = ""
  default     = ["10.2.0.0/24"]
}
