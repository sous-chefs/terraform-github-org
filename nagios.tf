module "nagios" {
  source         = "modules/repository"
  name           = "nagios"
  cookbook_team  = "${github_team.nagios_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
  has_wiki       = true
}

resource "github_team" "nagios_team" {
  name        = "nagios"
  description = "Nagios Cookbook Maintainers"
  privacy     = "closed"
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
