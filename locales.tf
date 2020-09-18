module "locales" {
  source        = "./modules/repository"
  name          = "locales"
  cookbook_team = github_team.locales.id
}

resource "github_team" "locales" {
  name        = "locales"
  description = "locales Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "locales-maintainer-1" {
  team_id  = github_team.locales.id
  username = "tas50"
  role     = "maintainer"
}
