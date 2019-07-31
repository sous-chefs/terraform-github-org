module "filesystem" {
  source        = "./modules/repository"
  name          = "filesystem"
  cookbook_team = github_team.filesystem.id
  status_checks = ["ci/circleci: lint"]
}

resource "github_team" "filesystem" {
  name        = "filesystem"
  description = "Filesystem Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "filesystem-maintainer-1" {
  team_id  = github_team.filesystem.id
  username = "rshade"
  role     = "maintainer"
}

