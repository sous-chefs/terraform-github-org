module "kismet" {
  source        = "./modules/repository"
  name          = "kismet"
  cookbook_team = github_team.kismet.id
  status_checks = ["ci/circleci: lint"]
}

resource "github_team" "kismet" {
  name        = "kismet"
  description = "kismet Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "kismet-maintainer-1" {
  team_id  = github_team.kismet.id
  username = "tas50"
  role     = "maintainer"
}

