module "ark" {
  source                       = "./modules/repository"
  name                         = "ark"
  cookbook_team                = github_team.ark.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "ark" {
  name        = "ark"
  description = "ark Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "ark-maintainer-1" {
  team_id  = github_team.ark.id
  username = "ramereth"
  role     = "maintainer"
}
