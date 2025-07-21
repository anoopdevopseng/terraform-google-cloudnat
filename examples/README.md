# Module usage examples

## Minimal example

This creates a Cloud NAT setup for a list of VPC subnets.

```hcl
module "nat" {
    source      = "git::https://github.com/anoopdevopseng/terraform-google-cloudnat?ref=v0.1.0"
    environment = "dev"
    project_id  = "my-project"
    region      = "europe-west3"
    vpc_id      = "my-vpc-id"
    num_nat_ips = 4
    subnet_ids_to_nat = [
        "subnet1-id",
        "subnet2-id",
    ]
}
```
