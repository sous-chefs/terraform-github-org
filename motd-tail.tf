module "motd-tail" {
  source                       = "./modules/repository"
  name                         = "motd-tail"
  cookbook_team                = github_team.motd-tail.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "motd-tail" {
  name        = "motd-tail"
  description = "motd-tail Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "motd-tail-maintainer-1" {
  team_id  = github_team.motd-tail.id
  username = "ramereth"
  role     = "maintainer"
}
