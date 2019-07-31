module "orbs" {
  source        = "./modules/repository"
  name          = "orbs"
  cookbook_team = github_team.orbs.id
  status_checks = ["ci/circleci: lint"]
  description   = "The source code for orbs published by Sous-Chefs https://circleci.com/orbs/registry"
}

resource "github_team" "orbs" {
  name        = "orbs"
  description = "CircleCI Orbs"
  privacy     = "closed"
}

resource "github_team_membership" "orbs-maintainer-1" {
  team_id  = github_team.orbs.id
  username = "damacus"
  role     = "maintainer"
}

