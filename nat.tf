# Create NAT IPs
resource "google_compute_address" "nat_ip" {
  project = var.project_id
  count   = var.num_nat_ips
  name    = "nat-ip-${count.index}"
  region  = var.region

  lifecycle {
    create_before_destroy = true
  }
}

# Create router
resource "google_compute_router" "nat_router" {
  project = var.project_id
  name    = "${var.region}-nat-router-${var.environment}"
  network = var.vpc_id
  region  = var.region
}

# Create NAT
resource "google_compute_router_nat" "nat" {
  project                            = var.project_id
  name                               = "${var.region}-router-nat-${var.environment}"
  router                             = google_compute_router.nat_router.name
  region                             = google_compute_router.nat_router.region
  nat_ip_allocate_option             = "MANUAL_ONLY"
  nat_ips                            = google_compute_address.nat_ip.*.self_link
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"

  dynamic "subnetwork" {
    for_each = toset(var.subnet_ids_to_nat)
    content {
      name                    = subnetwork.value
      source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
    }
  }
}
