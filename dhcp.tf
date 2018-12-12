module "dhcp" {
  source         = "modules/repository"
  name           = "dhcp"
  cookbook_team  = "${github_team.dhcp.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "dhcp" {
  name        = "dhcp"
  description = "DHCP Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "dhcp-maintainer-1" {
  team_id  = "${github_team.dhcp.id}"
  username = "shortdudey123"
  role     = "maintainer"
}
