module "redisio" {
  source                       = "./modules/repository"
  name                         = "redisio"
  description                  = "Development repository for the redisio cookbook"
  cookbook_team                = github_team.redisio.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "redisio" {
  name        = "redisio"
  description = "redisio Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "redisio-maintainer-1" {
  team_id  = github_team.redisio.id
  username = "Xorima"
  role     = "maintainer"
}

resource "github_team_membership" "redisio-maintainer-2" {
  team_id  = github_team.redisio.id
  username = "damacus"
  role     = "maintainer"
}

