output "vnet_peering_src_id" {
  description = "Virtual network source peering id"
  value       = module.src-dst-peering.vnet_peering_src_id
}

output "vnet_peering_src_name" {
  description = "Virtual network source peering name"
  value       = module.src-dst-peering.vnet_peering_src_name
}

output "vnet_peering_dst_id" {
  description = "Virtual network dstination peering id"
  value       = module.src-dst-peering.vnet_peering_dst_id
}

output "vnet_peering_dst_name" {
  description = "Virtual network dstination peering name"
  value       = module.src-dst-peering.vnet_peering_dst_name
}
