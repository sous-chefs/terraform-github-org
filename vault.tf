module "vault" {
  source         = "modules/repository"
  name           = "vault"
  cookbook_team  = "${github_team.vault.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "vault" {
  name        = "vault"
  description = "vault Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "vault-maintainer-1" {
  team_id  = "${github_team.vault.id}"
  username = "johnbellone"
  role     = "maintainer"
}
