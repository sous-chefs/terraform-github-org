module "visualstudio" {
  source                       = "./modules/repository"
  name                         = "visualstudio"
  cookbook_team                = github_team.visualstudio.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "visualstudio" {
  name        = "visualstudio"
  description = "visualstudio Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "visualstudio-maintainer-1" {
  team_id  = github_team.visualstudio.id
  username = "ramereth"
  role     = "maintainer"
}
