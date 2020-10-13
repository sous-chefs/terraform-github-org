module "traefik" {
  source                 = "./modules/repository"
  name                   = "traefik"
  cookbook_team          = github_team.traefik.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "traefik" {
  name        = "traefik"
  description = "traefik Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "traefik-maintainer-1" {
  team_id  = github_team.traefik.id
  username = "tas50"
  role     = "maintainer"
}
