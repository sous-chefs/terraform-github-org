module "apache2" {
  source        = "./modules/repository"
  name          = "apache2"
  cookbook_team = github_team.apache2.id
  status_checks = ["final", "danger/danger"]
}

resource "github_team" "apache2" {
  name        = "apache2"
  description = "apache Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "apache2-maintainer-1" {
  team_id  = github_team.apache2.id
  username = "damacus"
  role     = "maintainer"
}

