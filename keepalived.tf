module "keepalived" {
  source                       = "./modules/repository"
  name                         = "keepalived"
  cookbook_team                = github_team.keepalived.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "keepalived" {
  name        = "keepalived"
  description = "keepalived Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "keepalived-maintainer-1" {
  team_id  = github_team.keepalived.id
  username = "Xorima"
  role     = "maintainer"
}

resource "github_team_membership" "keepalived-maintainer-2" {
  team_id  = github_team.keepalived.id
  username = "tas50"
  role     = "maintainer"
}

