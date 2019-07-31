module "mysql" {
  source        = "./modules/repository"
  name          = "mysql"
  description   = "Sous Chefs MySQL Cookbook"
  cookbook_team = github_team.mysql.id
  status_checks = ["ci/circleci: lint"]
}

resource "github_team" "mysql" {
  name        = "mysql"
  description = "mysql Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "mysql-maintainer-1" {
  team_id  = github_team.mysql.id
  username = "rshade"
  role     = "maintainer"
}

resource "github_team_membership" "mysql-maintainer-2" {
  team_id  = github_team.mysql.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "mysql-maintainer-3" {
  team_id  = github_team.mysql.id
  username = "iennae"
  role     = "maintainer"
}

