resource "github_team" "nagios_team" {
  name        = "nagios"
  description = "Nagios Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_repository" "nagios_repo" {
  team_id    = "${github_team.nagios_team.id}"
  repository = "nagios"
  permission = "admin"
}

resource "github_team_membership" "nagios-maintainer-sbotman" {
  team_id  = "${github_team.nagios_team.id}"
  username = "sbotman"
  role     = "maintainer"
}

resource "github_team_membership" "nagios-maintainer-shoekstra" {
  team_id  = "${github_team.nagios_team.id}"
  username = "shoekstra"
  role     = "maintainer"
}

resource "github_team_membership" "nagios-maintainer-tas50" {
  team_id  = "${github_team.nagios_team.id}"
  username = "tas50"
  role     = "maintainer"
}
