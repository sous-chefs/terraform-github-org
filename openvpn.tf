module "openvpn" {
  source         = "modules/repository"
  name           = "openvpn"
  cookbook_team  = "${github_team.openvpn.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "openvpn" {
  name        = "openvpn"
  description = "OpenVPN Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "openvpn-maintainer-1" {
  team_id  = "${github_team.openvpn.id}"
  username = "flaccid"
  role     = "maintainer"
}

resource "github_team_membership" "openvpn-maintainer-2" {
  team_id  = "${github_team.openvpn.id}"
  username = "jeffbyrnes"
  role     = "maintainer"
}
