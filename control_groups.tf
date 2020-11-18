module "control_groups" {
  source                       = "./modules/repository"
  name                         = "control_groups"
  cookbook_team                = github_team.control_groups.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "control_groups" {
  name        = "control_groups"
  description = "control_groups Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "control_groups-maintainer-1" {
  team_id  = github_team.control_groups.id
  username = "damacus"
  role     = "maintainer"
}

