module "consul" {
  source         = "modules/repository"
  name           = "consul"
  cookbook_team  = "${github_team.consul.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "consul" {
  name        = "consul"
  description = "consul Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "consul-maintainer-1" {
  team_id  = "${github_team.consul.id}"
  username = "johnbellone"
  role     = "maintainer"
}
