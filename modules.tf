module "modules" {
  source        = "./modules/repository"
  name          = "modules"
  cookbook_team = github_team.modules.id
}

resource "github_team" "modules" {
  name        = "modules"
  description = "modules Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "modules-maintainer-1" {
  team_id  = github_team.modules.id
  username = "tas50"
  role     = "maintainer"
}
