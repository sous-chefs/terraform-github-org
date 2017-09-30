module "varnish" {
  source         = "modules/repository"
  name           = "varnish"
  cookbook_team  = "${github_team.varnish_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "varnish_team" {
  name        = "varnish"
  description = "Varnish Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "varnish-maintainer-1" {
  team_id  = "${github_team.varnish_team.id}"
  username = "martinb3"
  role     = "maintainer"
}

resource "github_team_membership" "varnish-maintainer-2" {
  team_id  = "${github_team.varnish_team.id}"
  username = "rshade"
  role     = "member"
}

resource "github_team_membership" "varnish-maintainer-3" {
  team_id  = "${github_team.varnish_team.id}"
  username = "RyanJarv"
  role     = "member"
}
