module "nexus" {
  source                     = "./modules/repository"
  name                       = "nexus"
  cookbook_team              = github_team.nexus.id
  require_code_owner_reviews = true
}

resource "github_team" "nexus" {
  name        = "nexus"
  description = "nexus Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nexus-maintainer-1" {
  team_id  = github_team.nexus.id
  username = "damacus"
  role     = "maintainer"
}

