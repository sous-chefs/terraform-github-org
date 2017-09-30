module "openvpn" {
  source         = "modules/repository"
  name           = "openvpn"
  cookbook_team  = "${github_team.openvpn_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "openvpn_team" {
  name        = "openvpn"
  description = "OpenVPN Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "openvpn-maintainer-1" {
  team_id  = "${github_team.openvpn_team.id}"
  username = "flaccid"
  role     = "maintainer"
}
