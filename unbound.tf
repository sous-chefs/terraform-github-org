module "unbound" {
  source                 = "./modules/repository"
  name                   = "unbound"
  cookbook_team          = github_team.unbound.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "unbound" {
  name        = "unbound"
  description = "Unbound Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "unbound-maintainer-1" {
  team_id  = github_team.unbound.id
  username = "jtimberman"
  role     = "maintainer"
}

