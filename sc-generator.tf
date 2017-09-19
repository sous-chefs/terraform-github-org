resource "github_team" "sc_generator_team" {
  name        = "sc-generator"
  description = "Sous Chef Generator Maintainers"
  privacy     = "closed"
}

resource "github_team_repository" "sc-generator" {
  team_id    = "${github_team.board.id}"
  repository = "sc-generator"
  permission = "admin"
}

resource "github_team_repository" "sc-generator-sous" {
  team_id    = "${github_team.Chef_de_partie.id}"
  repository = "sc-generator"
  permission = "push"
}

resource "github_team_membership" "nagios-maintainer-shoekstra" {
  team_id  = "${github_team.nagios_team.id}"
  username = "shoekstra"
  role     = "maintainer"
}
