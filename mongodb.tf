module "mongodb" {
  source         = "modules/repository"
  name           = "mongodb"
  cookbook_team  = "${github_team.mongodb.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
  homepage_url   = "https://supermarket.chef.io/cookbooks/sc-mongodb"
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

resource "github_team_membership" "mongodb-maintainer-3" {
  team_id  = "${github_team.mongodb.id}"
  username = "mateusduboli"
  role     = "maintainer"
}

resource "github_team_membership" "mongodb-maintainer-4" {
  team_id  = "${github_team.mongodb.id}"
  username = "swalberg"
  role     = "maintainer"
}
