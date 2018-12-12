module "varnish" {
  source         = "modules/repository"
  name           = "varnish"
  cookbook_team  = "${github_team.varnish.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "varnish" {
  name        = "varnish"
  description = "Varnish Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "varnish-maintainer-1" {
  team_id  = "${github_team.varnish.id}"
  username = "martinb3"
  role     = "maintainer"
}

resource "github_team_membership" "varnish-maintainer-2" {
  team_id  = "${github_team.varnish.id}"
  username = "rshade"
  role     = "member"
}

resource "github_team_membership" "varnish-maintainer-3" {
  team_id  = "${github_team.varnish.id}"
  username = "RyanJarv"
  role     = "member"
}
