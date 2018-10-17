variable "name" {}

variable "description" {
  default = ""
}

locals {
  default_description = "Development repository for the ${var.name} cookbook"
  description         = "${var.description == "" ? local.default_description : var.description }"
}

variable "cookbook_team" {
  description = "ID of the team that should own the repo, gives push access"
}

variable "chef_de_partie" {
  description = "ID of the team everyone belongs to, gives read-only access"
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
  type    = "list"
  default = ["ci/circleci: lint"]
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
  homepage_url         = "${var.homepage_url == "" ? local.default_homepage_url : var.homepage_url}"
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
  default_topics = ["chef", "chef-cookbook", "chef-resource", "${replace(var.name, "_", "-")}"]
  topics         = "${concat(local.default_topics, var.additional_topics)}"
}

variable "additional_topics" {
  type    = "list"
  default = []
}
