module "mac_os_x" {
  source              = "modules/repository"
  name                = "mac_os_x"
  cookbook_team       = "${github_team.dhcp_team.id}"
  team_permission     = "pull"
  chef_de_partie      = "${github_team.Chef_de_partie.id}"
  everyone_permission = "pull"
  description         = "This cookbook has been deprecated"
}

resource "github_team" "mac_os_x" {
  name        = "mac_os_x"
  description = "Mac OS X Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "mac_os_x-maintainer-1" {
  team_id  = "${github_team.mac_os_x.id}"
  username = "damacus"
  role     = "maintainer"
}
