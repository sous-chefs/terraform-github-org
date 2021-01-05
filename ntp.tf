module "ntp" {
  source                       = "./modules/repository"
  name                         = "ntp"
  cookbook_team                = github_team.ntp.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "ntp" {
  name        = "ntp"
  description = "ntp Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "ntp-maintainer-1" {
  team_id  = github_team.ntp.id
  username = "ramereth"
  role     = "maintainer"
}
