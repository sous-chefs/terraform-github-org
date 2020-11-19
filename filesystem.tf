module "filesystem" {
  source                       = "./modules/repository"
  name                         = "filesystem"
  cookbook_team                = github_team.filesystem.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "filesystem" {
  name        = "filesystem"
  description = "Filesystem Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "filesystem-maintainer-1" {
  team_id  = github_team.filesystem.id
  username = "rshade"
  role     = "maintainer"
}

resource "github_team_membership" "filesystem-maintainer-2" {
  team_id  = github_team.filesystem.id
  username = "MarkGibbons"
  role     = "maintainer"
}
