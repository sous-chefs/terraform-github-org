module "membership" {
  source = "./modules/org_membership"
}

provider "github" {
  token        = var.github_token
  organization = "sous-chefs"
   version = "~> 3.0"
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
