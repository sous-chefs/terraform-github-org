module "graphite" {
  source        = "./modules/repository"
  name          = "graphite"
  cookbook_team = github_team.graphite.id
}

resource "github_team" "graphite" {
  name        = "graphite"
  description = "Graphite Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "graphite-maintainer-1" {
  team_id  = github_team.graphite.id
  username = "tas50"
  role     = "maintainer"
}
