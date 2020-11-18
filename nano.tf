module "nano" {
  source                       = "./modules/repository"
  name                         = "nano"
  cookbook_team                = github_team.nano.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "nano" {
  name        = "nano"
  description = "Nano Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nano-maintainer-1" {
  team_id  = github_team.nano.id
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "nano-maintainer-2" {
  team_id  = github_team.nano.id
  username = "Xorima"
  role     = "maintainer"
}

