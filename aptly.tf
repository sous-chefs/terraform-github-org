module "aptly" {
  source         = "modules/repository"
  name           = "aptly"
  cookbook_team  = "${github_team.aptly.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "aptly" {
  name        = "aptly"
  description = "aptly Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "aptly-maintainer-1" {
  team_id  = "${github_team.aptly.id}"
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "aptly-maintainer-2" {
  team_id  = "${github_team.aptly.id}"
  username = "YpNo"
  role     = "maintainer"
}
