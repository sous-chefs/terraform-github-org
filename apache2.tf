module "apache2" {
  source                       = "./modules/repository"
  name                         = "apache2"
  cookbook_team                = github_team.apache2.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
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

