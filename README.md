# terraform-module-azurerm-virtual-network-peering

## Usage
See `examples` folders for usage of this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| azurerm.dst | ~> 1.41.0 |
| azurerm.src | ~> 1.41.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| custom\_peering\_dst\_name | Custom name of the vnet peerings to create | `string` | `""` | no |
| custom\_peering\_src\_name | Custom name of the vnet peerings to create | `string` | `""` | no |
| dst\_allow\_forwarded\_traffic | Enable it if you want to enable the forwarded traffic from the local vnet | `bool` | `false` | no |
| dst\_allow\_gateway\_transit | Enable it if the local vnet has a gateway and yo uwant to allow the remote peering to use that gateway for on-prem transit (hub) | `bool` | `false` | no |
| dst\_allow\_virtual\_network\_access | Enable it if you want to block traffic from the remote peered vnet | `bool` | `true` | no |
| dst\_use\_remote\_gateway | Enable it if you want to use the remmote vnet gateway for on-prem transit (spoke) | `bool` | `false` | no |
| enabled | Enable or disable module | `bool` | `true` | no |
| src\_allow\_forwarded\_traffic | Enable it if you want to enable the forwarded traffic from the local vnet | `bool` | `false` | no |
| src\_allow\_gateway\_transit | Enable it if the local vnet has a gateway and you want to allow the remote peering to use that gateway for on-prem transit (hub) | `bool` | `false` | no |
| src\_allow\_virtual\_network\_access | Enable it if you want to block traffic from the remote peered vnet | `bool` | `true` | no |
| src\_use\_remote\_gateways | Enable it if you want to use the remmote vnet gateway for on-prem transit (spoke) | `bool` | `false` | no |
| vnet\_dst\_id | ID of the dst vnet to peer | `string` | `""` | yes |
| vnet\_dst\_tenant\_id | Tenant ID of the dst vnet to peer | `string` | `""` | no |
| vnet\_src\_id | ID of the src vnet to peer | `string` | `""` | yes |
| vnet\_src\_tenant\_id | Tenant ID of the src vnet to peer | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| vnet\_peering\_dst\_id | Virtual network dstination peering id |
| vnet\_peering\_dst\_name | Virtual network dstination peering name |
| vnet\_peering\_src\_id | Virtual network source peering id |
| vnet\_peering\_src\_name | Virtual network source peering name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
