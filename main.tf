module "membership" {
  source = "./modules/org_membership"
}

provider "github" {
  token        = var.github_token
  organization = "sous-chefs"
  version      = "= 3.0" # 3.1.0 has a breaking change, https://github.com/terraform-providers/terraform-provider-github/issues/566
}

variable "github_token" {}

terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "sous-chefs"
    workspaces {
      name = "terraform-github-org"
    }
  }
}

variable "label_validator_url" {}
variable "webhook_secret_key" {}

locals {
  label_validator_config = {
    url     = var.label_validator_url
    secret  = var.webhook_secret_key
    enabled = true
  }
}
