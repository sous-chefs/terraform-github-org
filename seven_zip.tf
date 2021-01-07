module "seven_zip" {
  source                       = "./modules/repository"
  name                         = "seven_zip"
  cookbook_team                = github_team.seven_zip.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "seven_zip" {
  name        = "seven_zip"
  description = "seven_zip Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "seven_zip-maintainer-1" {
  team_id  = github_team.seven_zip.id
  username = "ramereth"
  role     = "maintainer"
}
