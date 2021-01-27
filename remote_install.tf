module "remote_install" {
  source                       = "./modules/repository"
  name                         = "remote_install"
  cookbook_team                = github_team.remote_install.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "remote_install" {
  name        = "remote_install"
  description = "remote_install Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "remote_install-maintainer-1" {
  team_id  = github_team.remote_install.id
  username = "ramereth"
  role     = "maintainer"
}
