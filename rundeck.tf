module "rundeck" {
  source                     = "./modules/repository"
  name                       = "rundeck"
  description                = "Development repository for the Rundeck cookbook"
  cookbook_team              = github_team.rundeck.id
  enforce_admins             = true
  require_code_owner_reviews = true
}

resource "github_team" "rundeck" {
  name        = "rundeck"
  description = "Rundeck Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rundeck-maintainer" {
  team_id  = github_team.rundeck.id
  username = "ev0ldave"
  role     = "maintainer"
}

resource "github_team_membership" "rundeck-maintainer-2" {
  team_id  = github_team.rundeck.id
  username = "pcross616"
  role     = "maintainer"
}

resource "github_team_membership" "rundeck-maintainer-3" {
  team_id  = github_team.rundeck.id
  username = "PowerSchill"
  role     = "maintainer"
}

