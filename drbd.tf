module "drbd" {
  source                       = "./modules/repository"
  name                         = "drbd"
  cookbook_team                = github_team.drbd.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "drbd" {
  name        = "drbd"
  description = "drbd Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "drbd-maintainer-1" {
  team_id  = github_team.drbd.id
  username = "ramereth"
  role     = "maintainer"
}
