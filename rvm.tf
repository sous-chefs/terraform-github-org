module "rvm" {
  source        = "./modules/repository"
  name          = "rvm"
  cookbook_team = github_team.rvm.id
  status_checks = ["ci/circleci: lint"]
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

