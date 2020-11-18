module "npm_lazy" {
  source                       = "./modules/repository"
  name                         = "npm_lazy"
  cookbook_team                = github_team.npm_lazy.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "npm_lazy" {
  name        = "npm_lazy"
  description = "npm_lazy Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "npm_lazy-maintainer-1" {
  team_id  = github_team.npm_lazy.id
  username = "tas50"
  role     = "maintainer"
}

