module "dpkg_autostart" {
  source                       = "./modules/repository"
  name                         = "dpkg_autostart"
  cookbook_team                = github_team.dpkg_autostart.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "dpkg_autostart" {
  name        = "dpkg_autostart"
  description = "dpkg_autostart Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "dpkg_autostart-maintainer-1" {
  team_id  = github_team.dpkg_autostart.id
  username = "tas50"
  role     = "maintainer"
}

