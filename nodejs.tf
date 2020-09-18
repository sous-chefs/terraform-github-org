module "nodejs" {
  source        = "./modules/repository"
  name          = "nodejs"
  cookbook_team = github_team.nodejs.id
}

resource "github_team" "nodejs" {
  name        = "nodejs"
  description = "nodejs Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nodejs-maintainer-1" {
  team_id  = github_team.nodejs.id
  username = "tas50"
  role     = "maintainer"
}
