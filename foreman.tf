module "foreman" {
  source                       = "./modules/repository"
  name                         = "foreman"
  cookbook_team                = github_team.foreman.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "foreman" {
  name        = "foreman"
  description = "foreman Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "foreman-maintainer-1" {
  team_id  = github_team.foreman.id
  username = "tas50"
  role     = "maintainer"
}
