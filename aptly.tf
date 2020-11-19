module "aptly" {
  source                       = "./modules/repository"
  name                         = "aptly"
  cookbook_team                = github_team.aptly.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "aptly" {
  name        = "aptly"
  description = "aptly Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "aptly-maintainer-1" {
  team_id  = github_team.aptly.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "aptly-maintainer-2" {
  team_id  = github_team.aptly.id
  username = "Raboo"
  role     = "maintainer"
}

