variable "name" {}
variable "description" {}

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
