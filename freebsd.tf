module "freebsd" {
  source                       = "./modules/repository"
  name                         = "freebsd"
  cookbook_team                = github_team.freebsd.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "freebsd" {
  name        = "freebsd"
  description = "freebsd Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "freebsd-maintainer-1" {
  team_id  = github_team.freebsd.id
  username = "ramereth"
  role     = "maintainer"
}
