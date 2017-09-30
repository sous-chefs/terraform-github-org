module "haproxy" {
  source         = "modules/repository"
  name           = "haproxy"
  description    = "Development repository for the HAProxy cookbook"
  cookbook_team  = "${github_team.haproxy.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "haproxy" {
  name        = "haproxy"
  description = "HAProxy Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "haproxy-maintainer-1" {
  team_id  = "${github_team.haproxy.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "haproxy-maintainer-2" {
  team_id  = "${github_team.haproxy.id}"
  username = "rshade"
  role     = "member"
}
