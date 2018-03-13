module "dhcp" {
  source         = "modules/repository"
  name           = "dhcp"
  cookbook_team  = "${github_team.dhcp_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "dhcp_team" {
  name        = "dhcp"
  description = "DHCP Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "dhcp-maintainer-2" {
  team_id  = "${github_team.dhcp_team.id}"
  username = "shortdudey123"
  role     = "maintainer"
}
