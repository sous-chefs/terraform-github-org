module "memcached" {
  source                       = "./modules/repository"
  name                         = "memcached"
  cookbook_team                = github_team.memcached.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "memcached" {
  name        = "memcached"
  description = "memcached Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "memcached-maintainer-1" {
  team_id  = github_team.memcached.id
  username = "tas50"
  role     = "maintainer"
}
