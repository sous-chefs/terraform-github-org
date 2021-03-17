module "membership" {
  source = "./modules/org_membership"
}

provider "github" {
  token        = var.github_token
  organization = "sous-chefs"
  # version      = "= 3.0" # 3.1.0 has a breaking change, https://github.com/terraform-providers/terraform-provider-github/issues/566
}

variable "github_token" {}
variable "changelog_reset_url" {}
variable "changelog_validator_url" {}
variable "cookbook_release_creator_url" {}
variable "cookbook_supermarket_uploader_url" {}
variable "cookbook_release_validator_url" {}
variable "deployment_status_slack_notifier_url" {}
variable "label_validator_url" {}
variable "webhook_secret_key" {}

locals {
  label_validator_config = {
    url     = var.label_validator_url
    secret  = var.webhook_secret_key
    enabled = true
  }
  changelog_reset_config = {
    url     = var.changelog_reset_url
    secret  = var.webhook_secret_key
    enabled = true
  }
  changelog_validator_config = {
    url     = var.changelog_validator_url
    secret  = var.webhook_secret_key
    enabled = true
  }
  cookbook_auto_release_config = {
    cookbook_release_creator_url         = var.cookbook_release_creator_url
    cookbook_supermarket_uploader_url    = var.cookbook_supermarket_uploader_url
    cookbook_release_validator_url       = var.cookbook_release_validator_url
    deployment_status_slack_notifier_url = var.deployment_status_slack_notifier_url
    secret                               = var.webhook_secret_key
    enabled                              = true
  }
}
