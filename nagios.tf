module "nagios" {
  source         = "modules/repository"
  name           = "nagios"
  cookbook_team  = "${github_team.nagios.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
  has_wiki       = true
}

resource "github_team" "nagios" {
  name        = "nagios"
  description = "Nagios Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nagios-maintainer-sbotman" {
  team_id  = "${github_team.nagios.id}"
  username = "sbotman"
  role     = "maintainer"
}

resource "github_team_membership" "nagios-maintainer-shoekstra" {
  team_id  = "${github_team.nagios.id}"
  username = "shoekstra"
  role     = "maintainer"
}

resource "github_team_membership" "nagios-maintainer-tas50" {
  team_id  = "${github_team.nagios.id}"
  username = "tas50"
  role     = "maintainer"
}
