module "nrpe" {
  source         = "modules/repository"
  name           = "nrpe"
  description    = "Chef cookbook to install Nagios NRPE client"
  cookbook_team  = "${github_team.nrpe.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "nrpe" {
  name        = "nrpe"
  description = "NRPE Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nrpe-maintainer-1" {
  team_id  = "${github_team.nrpe.id}"
  username = "sbotman"
  role     = "maintainer"
}

resource "github_team_membership" "nrpe-maintainer-2" {
  team_id  = "${github_team.nrpe.id}"
  username = "shoekstra"
  role     = "maintainer"
}

resource "github_team_membership" "nrpe-maintainer-3" {
  team_id  = "${github_team.nrpe.id}"
  username = "tas50"
  role     = "maintainer"
}
