module "daemontools" {
  source                 = "./modules/repository"
  name                   = "daemontools"
  cookbook_team          = github_team.daemontools.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "daemontools" {
  name        = "daemontools"
  description = "daemontools Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "daemontools-maintainer-1" {
  team_id  = github_team.daemontools.id
  username = "limitusus"
  role     = "maintainer"
}
