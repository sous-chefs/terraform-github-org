module "membership" {
  source = "modules/org_membership"
}

provider "github" {
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

terraform {
  backend "atlas" {
    name = "sous-chefs/terraform-github-org"
  }

  required_version = "0.10.6"
}
