
terraform {
  required_providers {
    github = {
      source = "integrations/github"
      # version = "=3.0"
    }
  }
  required_version = ">= 0.13"

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "sous-chefs"
    workspaces {
      name = "terraform-github-org"
    }
  }
}
