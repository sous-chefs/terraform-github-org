module "transmission" {
  source                       = "./modules/repository"
  name                         = "transmission"
  cookbook_team                = github_team.transmission.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "transmission" {
  name        = "transmission"
  description = "transmission Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "transmission-maintainer-1" {
  team_id  = github_team.transmission.id
  username = "tas50"
  role     = "maintainer"
}
