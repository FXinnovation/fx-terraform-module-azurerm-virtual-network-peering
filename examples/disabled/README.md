## Disabled example

## Usage
```
terraform init
terraform plan
terraform apply
terraform destroy
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| client\_id | n/a | `string` | n/a | yes |
| client\_secret | n/a | `string` | n/a | yes |
| dst\_vnet\_address\_space | n/a | `list` | <pre>[<br>  "10.2.0.0/24"<br>]</pre> | no |
| dst\_vnet\_name | n/a | `string` | `"spoke-vnet"` | no |
| location | n/a | `string` | `"canadaeast"` | no |
| src\_vnet\_address\_space | n/a | `list` | <pre>[<br>  "10.1.0.0/24"<br>]</pre> | no |
| src\_vnet\_name | n/a | `string` | `"hub-vnet"` | no |
| subscription\_id | n/a | `string` | n/a | yes |
| tenant\_id | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| vnet\_peering\_dst\_id | Virtual network dstination peering id |
| vnet\_peering\_dst\_name | Virtual network dstination peering name |
| vnet\_peering\_src\_id | Virtual network source peering id |
| vnet\_peering\_src\_name | Virtual network source peering name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
