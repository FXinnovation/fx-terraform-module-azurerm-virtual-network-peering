## Standard example

## Usage
```
terraform init
terraform plan
terraform apply
terraform destroy
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| client\_id |  | string | n/a | yes |
| client\_secret |  | string | n/a | yes |
| subscription\_id |  | string | n/a | yes |
| tenant\_id |  | string | n/a | yes |
| hub\_vnet\_address\_space |  | string | `"10.1.0.0/24"` | no |
| hub\_vnet\_name |  | string | `"hub-vnet"` | no |
| location |  | string | `"canadaeast"` | no |
| spoke\_vnet\_address\_space |  | string | `"10.2.0.0/24"` | no |
| spoke\_vnet\_name |  | string | `"spoke-vnet"` | no |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
