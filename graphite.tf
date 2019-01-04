module "graphite" {
  source                     = "modules/repository"
  name                       = "graphite"
  cookbook_team              = "${github_team.graphite.id}"
  chef_de_partie             = "${github_team.Chef_de_partie.id}"
  enforce_admins             = true
  require_code_owner_reviews = true
}

resource "github_team" "graphite" {
  name        = "graphite"
  description = "Graphite Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "graphite-maintainer-1" {
  team_id  = "${github_team.graphite.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "graphite-maintainer-2" {
  team_id  = "${github_team.graphite.id}"
  username = "abilun"
  role     = "maintainer"
}
