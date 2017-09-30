module "nrpe" {
  source         = "modules/repository"
  name           = "nrpe"
  description    = "Chef cookbook to install Nagios NRPE client (was previously part of the Nagios cookbook)"
  homepage_url   = "https://supermarket.chef.io/cookbooks/nrpe"
  cookbook_team  = "${github_team.nrpe_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "nrpe_team" {
  name        = "nrpe"
  description = "NRPE Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nrpe-maintainer-sbotman" {
  team_id  = "${github_team.nrpe_team.id}"
  username = "sbotman"
  role     = "maintainer"
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
