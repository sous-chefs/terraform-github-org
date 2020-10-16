module "sysinternals" {
  source                 = "./modules/repository"
  name                   = "sysinternals"
  cookbook_team          = github_team.sysinternals.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "sysinternals" {
  name        = "sysinternals"
  description = "sysinternals Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sysinternals-maintainer-1" {
  team_id  = github_team.sysinternals.id
  username = "ramereth"
  role     = "maintainer"
}
