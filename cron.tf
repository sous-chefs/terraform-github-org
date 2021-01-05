module "cron" {
  source                       = "./modules/repository"
  name                         = "cron"
  cookbook_team                = github_team.cron.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "cron" {
  name        = "cron"
  description = "cron Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "cron-maintainer-1" {
  team_id  = github_team.cron.id
  username = "ramereth"
  role     = "maintainer"
}
