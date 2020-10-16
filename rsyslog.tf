module "rsyslog" {
  source                 = "./modules/repository"
  name                   = "rsyslog"
  cookbook_team          = github_team.rsyslog.id
  label_validator_config = local.label_validator_config
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
