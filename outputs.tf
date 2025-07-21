# Outputs
output "nat_ips" {
  description = "The created NAT IPs"
  value       = google_compute_address.nat_ip
}
