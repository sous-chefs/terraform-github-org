module "git" {
  source                       = "./modules/repository"
  name                         = "git"
  cookbook_team                = github_team.git.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "git" {
  name        = "git"
  description = "git Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "git-maintainer-1" {
  team_id  = github_team.git.id
  username = "tas50"
  role     = "maintainer"
}
