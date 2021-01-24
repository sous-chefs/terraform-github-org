module "webpi" {
  source                       = "./modules/repository"
  name                         = "webpi"
  cookbook_team                = github_team.webpi.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "webpi" {
  name        = "webpi"
  description = "webpi Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "webpi-maintainer-1" {
  team_id  = github_team.webpi.id
  username = "ramereth"
  role     = "maintainer"
}
