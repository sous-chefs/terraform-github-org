module "mongodb" {
  source                 = "./modules/repository"
  name                   = "mongodb"
  cookbook_team          = github_team.mongodb.id
  homepage_url           = "https://supermarket.chef.io/cookbooks/sc-mongodb"
  label_validator_config = local.label_validator_config
}

resource "github_team" "mongodb" {
  name        = "mongodb"
  description = "MongoDB Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "mongodb-maintainer-1" {
  team_id  = github_team.mongodb.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "mongodb-maintainer-2" {
  team_id  = github_team.mongodb.id
  username = "shortdudey123"
  role     = "maintainer"
}
