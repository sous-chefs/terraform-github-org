module "users" {
  source                       = "./modules/repository"
  name                         = "users"
  cookbook_team                = github_team.users.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "users" {
  name        = "users"
  description = "users Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "users-maintainer-1" {
  team_id  = github_team.users.id
  username = "ramereth"
  role     = "maintainer"
}
