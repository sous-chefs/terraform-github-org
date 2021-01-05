module "chrony" {
  source                       = "./modules/repository"
  name                         = "chrony"
  cookbook_team                = github_team.chrony.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "chrony" {
  name        = "chrony"
  description = "chrony Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chrony-maintainer-1" {
  team_id  = github_team.chrony.id
  username = "ramereth"
  role     = "maintainer"
}
