module "transmission" {
  source        = "./modules/repository"
  name          = "transmission"
  cookbook_team = github_team.transmission.id
}

resource "github_team" "transmission" {
  name        = "transmission"
  description = "transmission Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "transmission-maintainer-1" {
  team_id  = github_team.transmission.id
  username = "tas50"
  role     = "maintainer"
}
