module "atom" {
  source         = "modules/repository"
  name           = "atom"
  cookbook_team  = "${github_team.atom.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "atom" {
  name        = "atom"
  description = "atom Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "atom-maintainer-1" {
  team_id  = "${github_team.atom.id}"
  username = "mohitsethi"
  role     = "maintainer"
}
