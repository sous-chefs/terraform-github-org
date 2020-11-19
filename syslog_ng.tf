module "syslog_ng" {
  source                       = "./modules/repository"
  name                         = "syslog_ng"
  cookbook_team                = github_team.syslog_ng.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "syslog_ng" {
  name        = "syslog_ng"
  description = "syslog_ng Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "syslog_ng-maintainer-1" {
  team_id  = github_team.syslog_ng.id
  username = "bmhughes"
  role     = "maintainer"
}

