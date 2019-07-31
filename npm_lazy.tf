module "npm_lazy" {
  source        = "./modules/repository"
  name          = "npm_lazy"
  cookbook_team = github_team.npm_lazy.id
  status_checks = ["ci/circleci: lint"]
}

resource "github_team" "npm_lazy" {
  name        = "npm_lazy"
  description = "npm_lazy Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "npm_lazy-maintainer-1" {
  team_id  = github_team.npm_lazy.id
  username = "tas50"
  role     = "maintainer"
}

