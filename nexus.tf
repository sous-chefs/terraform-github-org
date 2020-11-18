module "nexus" {
  source                       = "./modules/repository"
  name                         = "nexus"
  cookbook_team                = github_team.nexus.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "nexus" {
  name        = "nexus"
  description = "nexus Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nexus-maintainer-1" {
  team_id  = github_team.nexus.id
  username = "damacus"
  role     = "maintainer"
}

