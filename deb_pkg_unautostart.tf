module "deb_pkg_unautostart" {
  source                       = "./modules/repository"
  name                         = "deb_pkg_unautostart"
  cookbook_team                = github_team.deb_pkg_unautostart.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "deb_pkg_unautostart" {
  name        = "deb_pkg_unautostart"
  description = "deb_pkg_unautostart Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "deb_pkg_unautostart-maintainer-1" {
  team_id  = github_team.deb_pkg_unautostart.id
  username = "ramereth"
  role     = "maintainer"
}
