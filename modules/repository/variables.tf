variable "name" {}

variable "description" {
  default = ""
}

locals {
  default_description = "Development repository for the ${var.name} cookbook"
  description         = var.description == "" ? local.default_description : var.description
}

variable "cookbook_team" {
  description = "ID of the team that should own the repo, gives push access"
}

variable "homepage_url" {
  default     = ""
  description = "Home page URL for the Git repo"
}

variable "enforce_admins" {
  default = false
}

variable "require_ci_pass" {
  default = true
}

variable "status_checks" {
  type    = list(string)
  default = ["final"]
}

locals {
  default_checks  = var.status_checks
  changelog_check = "${var.changelog_validator_config.enabled ? "Changelog Validator" : ""}"
  metadata_check  = "${var.cookbook_auto_release_config.enabled ? "Metadata Version Validator" : ""}"
  label_check     = "${var.label_validator_config.enabled ? "Release Label Validator" : ""}"
  status_checks   = compact(concat(local.default_checks, local.changelog_check, local.metadata_check, local.label_check))
}

variable "has_wiki" {
  default = false
}

variable "has_projects" {
  default = true
}

variable "team_permission" {
  default = "push"
}

variable "everyone_permission" {
  default = "push"
}

locals {
  default_homepage_url = "https://supermarket.chef.io/cookbooks/${var.name}"
  homepage_url         = var.homepage_url == "" ? local.default_homepage_url : var.homepage_url
}

# Pull Request Reviews
variable "dismiss_stale_reviews" {
  default = true
}

variable "require_code_owner_reviews" {
  default = false
}

variable "archived" {
  default = false
}

locals {
  default_topics = ["chef", "${replace(replace(var.name, "_", "-"), ".", "")}", "terraform-managed", "hacktoberfest"]
  topics         = concat(local.default_topics, var.additional_topics)
}

variable "additional_topics" {
  type    = list(string)
  default = ["chef-cookbook", "chef-resource"]
}

variable "auto_init" {
  default = true

  description = <<DESCRIPTION
  This is an option that initializes the repo, it defaults to true. If it is set
  to false then it will not enable branch protection. The only use cases where
  you might want this is to create a project based on another project such as
  needing to use the import api or doing a bare clone. This setting only really
  applies (from github api perspective) when the repo is initially created,
  however as we can only set up branch protection if the repo has been initialized
  with the master branch we use it as well to control branch protections being
  enabled. If you need to handle one of these edgecases you should set `auto_init`
  to false initially so the repo can be created. After its been created and
  commits/hostory migrated (be it bare clone or import api) you would then set
  this to true which should enable branch protections.
DESCRIPTION
}

variable "label_validator_config" {
  default = {
    enabled = false
  }
}
variable "changelog_reset_config" {
  default = {
    enabled = false
  }
}

variable "changelog_validator_config" {
  default = {
    enabled = false
  }
}

variable "cookbook_auto_release_config" {
  default = {
    enabled = false
  }
}