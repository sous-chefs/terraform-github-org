module "winrm" {
  source         = "modules/repository"
  name           = "winrm"
  homepage_url   = " "
  cookbook_team  = "${github_team.winrm.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "winrm" {
  name        = "winrm"
  description = "WinRM Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "winrm-maintainer" {
  team_id  = "${github_team.winrm.id}"
  username = "ev0ldave"
  role     = "maintainer"
}
