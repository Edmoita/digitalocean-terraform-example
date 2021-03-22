# Create a new Droplet using the SSH key
# DigitalOcean API Docs: https://developers.digitalocean.com/documentation/v2/#droplets
# Terraform Docs: https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/droplet
resource "digitalocean_droplet" "server" {
  image  = "docker-20-04"
  name   = "test-server"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    digitalocean_ssh_key.terraform.id
  ]
}

# Create a new Project using the Droplet as resource
# DigitalOcean API Docs: https://developers.digitalocean.com/documentation/v2/#projects
# Terraform Docs: https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/project
resource "digitalocean_project" "playground" {
  name        = "playground"
  description = "A project to represent development resources."
  purpose     = "Service or API"
  environment = "Development"
  resources   = [digitalocean_droplet.server.urn]
}
