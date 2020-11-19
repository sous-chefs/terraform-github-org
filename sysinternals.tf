module "sysinternals" {
  source                       = "./modules/repository"
  name                         = "sysinternals"
  cookbook_team                = github_team.sysinternals.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "sysinternals" {
  name        = "sysinternals"
  description = "sysinternals Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sysinternals-maintainer-1" {
  team_id  = github_team.sysinternals.id
  username = "ramereth"
  role     = "maintainer"
}
