####################
## INPUT VARIABLES
####################

### REQUIRED
variable "project_id" {
  description = "The GCP project ID in which the resources will be created"
  type        = string
}

variable "environment" {
  type = string
}

variable "vpc_id" {
  description = "ID of the VPC for which to create Cloud NAT"
  type        = string
}

variable "subnet_ids_to_nat" {
  description = "List of VPC subnets ID that will be natted"
  type        = list(string)
}

### OPTIONAL
variable "region" {
  description = "The region in which to deploy the resources"
  type        = string
  default     = "europe-west3"
}

variable "num_nat_ips" {
  description = "Number of NAT IPs that will be reserved"
  type        = number
  default     = 2
}
