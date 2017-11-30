module "unbound" {
  source         = "modules/repository"
  name           = "unbound"
  cookbook_team  = "${github_team.unbound_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "unbound_team" {
  name        = "unbound"
  description = "Unbound Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "unbound-maintainer-1" {
  team_id  = "${github_team.unbound_team.id}"
  username = "jtimberman"
  role     = "maintainer"
}

resource "github_team_membership" "unbound-maintainer-2" {
  team_id  = "${github_team.unbound_team.id}"
  username = "diurnalist"
  role     = "maintainer"
}
