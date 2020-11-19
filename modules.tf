module "modules" {
  source                       = "./modules/repository"
  name                         = "modules"
  cookbook_team                = github_team.modules.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "modules" {
  name        = "modules"
  description = "modules Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "modules-maintainer-1" {
  team_id  = github_team.modules.id
  username = "tas50"
  role     = "maintainer"
}
