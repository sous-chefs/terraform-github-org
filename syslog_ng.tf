module "syslog_ng" {
  source        = "./modules/repository"
  name          = "syslog_ng"
  cookbook_team = github_team.syslog_ng.id
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

