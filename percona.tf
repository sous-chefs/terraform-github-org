module "percona" {
  source                 = "./modules/repository"
  name                   = "percona"
  cookbook_team          = github_team.percona.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "percona" {
  name        = "percona"
  description = "percona Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "percona-maintainer-1" {
  team_id  = github_team.percona.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "percona-maintainer-2" {
  team_id  = github_team.percona.id
  username = "teknofire"
  role     = "maintainer"
}

