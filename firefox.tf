module "firefox" {
  source                       = "./modules/repository"
  name                         = "firefox"
  cookbook_team                = github_team.firefox.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "firefox" {
  name        = "firefox"
  description = "firefox Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "firefox-maintainer-1" {
  team_id  = github_team.firefox.id
  username = "tas50"
  role     = "maintainer"
}
