module "apache2" {
  source                     = "./modules/repository"
  name                       = "apache2"
  cookbook_team              = github_team.apache2.id
  require_code_owner_reviews = true
}

resource "github_team" "apache2" {
  name        = "apache2"
  description = "apache Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "apache2-maintainer-1" {
  team_id  = github_team.apache2.id
  username = "damacus"
  role     = "maintainer"
}

