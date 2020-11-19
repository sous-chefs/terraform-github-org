module "rsyslog" {
  source                       = "./modules/repository"
  name                         = "rsyslog"
  cookbook_team                = github_team.rsyslog.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "rsyslog" {
  name        = "rsyslog"
  description = "rsyslog Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rsyslog-maintainer-1" {
  team_id  = github_team.rsyslog.id
  username = "ramereth"
  role     = "maintainer"
}
