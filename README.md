# terraform-module-azurerm-virtual-network-peering

## Usage
See `examples` folders for usage of this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| custom\_peering\_dst\_name | Custom name of the vnet peerings to create | `string` | `""` | no |
| custom\_peering\_src\_name | Custom name of the vnet peerings to create | `string` | `""` | no |
| use\_remote\_dst\_gateway | Option use\_remote\_gateway for the dst vnet to peer. Controls if remote gateways can be used on the local virtual network. https://www.terraform.io/docs/providers/azurerm/r/virtual\_network\_peering.html#use\_remote\_gateways | `bool` | `false` | no |
| use\_remote\_src\_gateway | Option use\_remote\_gateway for the src vnet to peer. Controls if remote gateways can be used on the local virtual network. https://www.terraform.io/docs/providers/azurerm/r/virtual\_network\_peering.html#use\_remote\_gateways | `bool` | `false` | no |
| vnet\_dst\_id | ID of the dst vnet to peer | `string` | n/a | yes |
| vnet\_dst\_tenant\_id | Tenant ID of the dst vnet to peer | `string` | `""` | no |
| vnet\_src\_id | ID of the src vnet to peer | `string` | n/a | yes |
| vnet\_src\_tenant\_id | Tenant ID of the src vnet to peer | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| vnet\_peering\_dst\_id | Virtual network dst peering id |
| vnet\_peering\_dst\_name | Virtual network dst peering name |
| vnet\_peering\_src\_id | Virtual network src peering id |
| vnet\_peering\_src\_name | Virtual network src peering name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
