module "membership" {
  source = "modules/org_membership"
}

provider "github" {
  version      = "~> 1.0"
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

terraform {
  backend "atlas" {
    name = "sous-chefs/github-org"
  }
}
