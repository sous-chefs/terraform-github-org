module "wix" {
  source                       = "./modules/repository"
  name                         = "wix"
  cookbook_team                = github_team.wix.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "wix" {
  name        = "wix"
  description = "wix Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "wix-maintainer-1" {
  team_id  = github_team.wix.id
  username = "ramereth"
  role     = "maintainer"
}
