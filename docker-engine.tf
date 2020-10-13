module "docker-engine" {
  source                 = "./modules/repository"
  name                   = "docker-engine"
  cookbook_team          = github_team.docker-engine.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "docker-engine" {
  name        = "docker-engine"
  description = "docker-engine Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "docker-engine-maintainer-1" {
  team_id  = github_team.docker-engine.id
  username = "tas50"
  role     = "maintainer"
}
