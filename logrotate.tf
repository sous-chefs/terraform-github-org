module "logrotate" {
  source                       = "./modules/repository"
  name                         = "logrotate"
  cookbook_team                = github_team.logrotate.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "logrotate" {
  name        = "logrotate"
  description = "logrotate Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "logrotate-maintainer-1" {
  team_id  = github_team.logrotate.id
  username = "ramereth"
  role     = "maintainer"
}
