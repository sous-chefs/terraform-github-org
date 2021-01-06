module "iis" {
  source                       = "./modules/repository"
  name                         = "iis"
  cookbook_team                = github_team.iis.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "iis" {
  name        = "iis"
  description = "iis Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "iis-maintainer-1" {
  team_id  = github_team.iis.id
  username = "ramereth"
  role     = "maintainer"
}
