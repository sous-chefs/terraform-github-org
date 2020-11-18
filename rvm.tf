module "rvm" {
  source                       = "./modules/repository"
  name                         = "rvm"
  cookbook_team                = github_team.rvm.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "rvm" {
  name        = "rvm"
  description = "rvm Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rvm-maintainer-2" {
  team_id  = github_team.rvm.id
  username = "damacus"
  role     = "maintainer"
}
