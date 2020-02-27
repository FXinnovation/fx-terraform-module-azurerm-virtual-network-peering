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

| Name | Version |
|------|---------|
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| client\_id | n/a | `string` | n/a | yes |
| client\_secret | n/a | `string` | n/a | yes |
| location | n/a | `string` | `"canadaeast"` | no |
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