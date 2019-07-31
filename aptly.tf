module "aptly" {
  source        = "./modules/repository"
  name          = "aptly"
  cookbook_team = github_team.aptly.id
  status_checks = ["ci/circleci: lint"]
}

resource "github_team" "aptly" {
  name        = "aptly"
  description = "aptly Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "aptly-maintainer-1" {
  team_id  = github_team.aptly.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "aptly-maintainer-2" {
  team_id  = github_team.aptly.id
  username = "Raboo"
  role     = "maintainer"
}

