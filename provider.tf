terraform {
  
}

terraform {
  required_providers {
    vultr = {
      source = "vultr/vultr"
      version = "2.12.0"
    }
  }
  cloud {
    organization = "tbv198"

    workspaces {
      name = "terraform-cloud-vultr"
    }
  }
}

# Configure the Vultr Provider
provider "vultr" {
  api_key = var.VULTR_API_KEY
  rate_limit = 100
  retry_limit = 3
}

variable "VULTR_API_KEY" {}