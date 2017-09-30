module "mongodb" {
  source         = "modules/repository"
  name           = "mongodb"
  description    = "Development repository for the mongodb cookbook"
  cookbook_team  = "${github_team.dhcp_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "mongodb" {
  name        = "mongodb"
  description = "MongoDB Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "mongodb-maintainer-1" {
  team_id  = "${github_team.mongodb.id}"
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "mongodb-maintainer-2" {
  team_id  = "${github_team.mongodb.id}"
  username = "shortdudey123"
  role     = "maintainer"
}
