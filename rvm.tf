module "rvm" {
  source        = "./modules/repository"
  name          = "rvm"
  cookbook_team = github_team.rvm.id
}

resource "github_team" "rvm" {
  name        = "rvm"
  description = "rvm Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rvm-maintainer-1" {
  team_id  = github_team.rvm.id
  username = "martinisoft"
  role     = "maintainer"
}

resource "github_team_membership" "rvm-maintainer-2" {
  team_id  = github_team.rvm.id
  username = "damacus"
  role     = "maintainer"
}
