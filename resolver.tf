module "resolver" {
  source                       = "./modules/repository"
  name                         = "resolver"
  cookbook_team                = github_team.resolver.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "resolver" {
  name        = "resolver"
  description = "resolver Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "resolver-maintainer-1" {
  team_id  = github_team.resolver.id
  username = "ramereth"
  role     = "maintainer"
}
