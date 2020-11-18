module "rundeck" {
  source                       = "./modules/repository"
  name                         = "rundeck"
  description                  = "Development repository for the Rundeck cookbook"
  cookbook_team                = github_team.rundeck.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
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

