# Terraform module for creating Cloud NAT setups

This module can be used to create a Google Cloud NAT setup.

Check out the [`examples`](/examples) directory for usage examples.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 6.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | ~> 6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_compute_address.nat_ip](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address) | resource |
| [google_compute_router.nat_router](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router) | resource |
| [google_compute_router_nat.nat](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | n/a | `string` | n/a | yes |
| <a name="input_num_nat_ips"></a> [num\_nat\_ips](#input\_num\_nat\_ips) | Number of NAT IPs that will be reserved | `number` | `2` | no |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The GCP project ID in which the resources will be created | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which to deploy the resources | `string` | `"europe-west3"` | no |
| <a name="input_subnet_ids_to_nat"></a> [subnet\_ids\_to\_nat](#input\_subnet\_ids\_to\_nat) | List of VPC subnets ID that will be natted | `list(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | ID of the VPC for which to create Cloud NAT | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_nat_ips"></a> [nat\_ips](#output\_nat\_ips) | The created NAT IPs |
<!-- END_TF_DOCS -->
