module "orbs" {
  source         = "modules/repository"
  name           = "orbs"
  cookbook_team  = "${github_team.orbs.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "orbs" {
  name        = "orbs"
  description = "CircleCI Orbs"
  privacy     = "closed"
}

resource "github_team_membership" "orbs-maintainer-1" {
  team_id  = "${github_team.orbs.id}"
  username = "damacus"
  role     = "maintainer"
}
