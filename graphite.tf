module "graphite" {
  source                       = "./modules/repository"
  name                         = "graphite"
  cookbook_team                = github_team.graphite.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "graphite" {
  name        = "graphite"
  description = "Graphite Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "graphite-maintainer-1" {
  team_id  = github_team.graphite.id
  username = "tas50"
  role     = "maintainer"
}
