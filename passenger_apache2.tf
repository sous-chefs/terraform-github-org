module "passenger_apache2" {
  source        = "modules/repository"
  name          = "passenger_apache2"
  cookbook_team = "${github_team.passenger_apache2.id}"
  status_checks = ["ci/circleci: delivery"]
}

resource "github_team" "passenger_apache2" {
  name        = "passenger_apache2"
  description = "passenger_apache2 Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "passenger_apache2-maintainer-1" {
  team_id  = "${github_team.passenger_apache2.id}"
  username = "damacus"
  role     = "maintainer"
}
