# Configure behaviors of Terraform
# Terraform Docs: https://www.terraform.io/docs/language/settings/index.html
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.6.0"
    }
  }
}

# Configure the DigitalOcean Provider
# Terraform Docs: https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs
provider "digitalocean" {
  token = var.do_token
}

# Create a new SSH key
# Terraform Docs: https://registry.terraform.io/providers/digitalocean/digitalocean/latest/docs/resources/ssh_key
resource "digitalocean_ssh_key" "terraform" {
  name       = "Terraform"
  public_key = file(var.pub_key)
}
