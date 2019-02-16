module "squid" {
  source          = "modules/repository"
  name            = "squid"
  cookbook_team   = "${github_team.squid.id}"
  chef_de_partie  = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "squid" {
  name        = "squid"
  description = "squid Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "squid-maintainer-1" {
  team_id  = "${github_team.squid.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "squid-maintainer-2" {
  team_id  = "${github_team.squid.id}"
  username = "xorima"
  role     = "member"
}
