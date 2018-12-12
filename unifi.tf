module "unifi" {
  source         = "modules/repository"
  name           = "unifi"
  cookbook_team  = "${github_team.unifi.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "unifi" {
  name        = "unifi"
  description = "unifi Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "unifi-maintainer-1" {
  team_id  = "${github_team.unifi.id}"
  username = "tas50"
  role     = "maintainer"
}
