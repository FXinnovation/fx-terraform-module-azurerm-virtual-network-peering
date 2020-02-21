locals {
  vnet_src_parts               = split("/", var.vnet_src_id)
  vnet_src_name                = element(local.vnet_src_parts, 8)
  vnet_src_subscription_id     = element(local.vnet_src_parts, 2)
  vnet_src_resource_group_name = element(local.vnet_src_parts, 4)

  vnet_dst_parts               = split("/", var.vnet_dst_id)
  vnet_dst_name                = element(local.vnet_dst_parts, 8)
  vnet_dst_subscription_id     = element(local.vnet_dst_parts, 2)
  vnet_dst_resource_group_name = element(local.vnet_dst_parts, 4)
}
