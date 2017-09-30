module "swap" {
  source         = "modules/repository"
  name           = "swap"
  cookbook_team  = "${github_team.swap.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "swap" {
  name        = "swap"
  description = "Swap Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "swap-maintainer-1" {
  team_id  = "${github_team.swap.id}"
  username = "tas50"
  role     = "maintainer"
}
