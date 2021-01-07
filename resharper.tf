module "resharper" {
  source                       = "./modules/repository"
  name                         = "resharper"
  cookbook_team                = github_team.resharper.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "resharper" {
  name        = "resharper"
  description = "resharper Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "resharper-maintainer-1" {
  team_id  = github_team.resharper.id
  username = "ramereth"
  role     = "maintainer"
}
