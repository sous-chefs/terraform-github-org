module "smartmontools" {
  source         = "modules/repository"
  name           = "smartmontools"
  cookbook_team  = "${github_team.smartmontools_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "smartmontools_team" {
  name        = "smartmontools"
  description = "SmartMonTools Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "smartmontools-maintainer-1" {
  team_id  = "${github_team.smartmontools_team.id}"
  username = "tas50"
  role     = "maintainer"
}
