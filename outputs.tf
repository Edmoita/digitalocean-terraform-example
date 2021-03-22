output "droplet_id" {
  description = "ID of the DigitalOcean Droplet"
  value       = digitalocean_droplet.server.id
}

output "droplet_ipv4" {
  description = "Public IPv4 address of the DigitalOcean Droplet"
  value       = digitalocean_droplet.server.ipv4_address
}
