module "samba" {
  source         = "modules/repository"
  name           = "samba"
  cookbook_team  = "${github_team.samba.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "samba" {
  name        = "samba"
  description = "Samba Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "samba-maintainer" {
  team_id  = "${github_team.samba.id}"
  username = "damacus"
  role     = "maintainer"
}
