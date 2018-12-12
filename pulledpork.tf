module "pulledpork" {
  source         = "modules/repository"
  name           = "pulledpork"
  cookbook_team  = "${github_team.pulledpork.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "pulledpork" {
  name        = "pulledpork"
  description = "pulledpork Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "pulledpork-maintainer-1" {
  team_id  = "${github_team.pulledpork.id}"
  username = "tas50"
  role     = "maintainer"
}
