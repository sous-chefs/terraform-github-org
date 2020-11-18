module "sensors" {
  source                       = "./modules/repository"
  name                         = "sensors"
  cookbook_team                = github_team.sensors.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "sensors" {
  name        = "sensors"
  description = "sensors Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sensors-maintainer-1" {
  team_id  = github_team.sensors.id
  username = "tas50"
  role     = "maintainer"
}
