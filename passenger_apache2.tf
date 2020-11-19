module "passenger_apache2" {
  source                       = "./modules/repository"
  name                         = "passenger_apache2"
  cookbook_team                = github_team.passenger_apache2.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "passenger_apache2" {
  name        = "passenger_apache2"
  description = "passenger_apache2 Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "passenger_apache2-maintainer-1" {
  team_id  = github_team.passenger_apache2.id
  username = "damacus"
  role     = "maintainer"
}

