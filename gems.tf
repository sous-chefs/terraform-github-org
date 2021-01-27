module "gems" {
  source                       = "./modules/repository"
  name                         = "gems"
  cookbook_team                = github_team.gems.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "gems" {
  name        = "gems"
  description = "gems Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "gems-maintainer-1" {
  team_id  = github_team.gems.id
  username = "ramereth"
  role     = "maintainer"
}
