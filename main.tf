module "membership" {
  source = "modules/org_membership"
}

provider "github" {
  version      = "~> 1.0"
  token        = "${var.github_token}"
  organization = "${var.github_organization}"
}

terraform {
  backend "s3" {
    bucket = "sous-chefs.terraform-state"
    key    = "terraform.tfstate"
    region = "eu-west-1"
  }
}
