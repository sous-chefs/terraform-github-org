resource "github_team" "nrpe_team" {
  name        = "nrpe"
  description = "NRPE Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_repository" "nrpe_repo" {
  team_id    = "${github_team.nrpe_team.id}"
  repository = "nrpe"
  permission = "admin"
}

resource "github_team_membership" "nrpe-maintainer-shoekstra" {
  team_id  = "${github_team.nrpe_team.id}"
  username = "shoekstra"
  role     = "maintainer"
}

resource "github_team_membership" "nrpe-maintainer-tas50" {
  team_id  = "${github_team.nrpe_team.id}"
  username = "tas50"
  role     = "maintainer"
}
