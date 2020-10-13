module "docker" {
  source                 = "./modules/repository"
  name                   = "docker"
  cookbook_team          = github_team.docker.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "docker" {
  name        = "docker"
  description = "docker Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "docker-maintainer-1" {
  team_id  = github_team.docker.id
  username = "tas50"
  role     = "maintainer"
}
