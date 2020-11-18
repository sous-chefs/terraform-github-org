module "squid" {
  source                       = "./modules/repository"
  name                         = "squid"
  cookbook_team                = github_team.squid.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "squid" {
  name        = "squid"
  description = "squid Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "squid-maintainer-1" {
  team_id  = github_team.squid.id
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "squid-maintainer-2" {
  team_id  = github_team.squid.id
  username = "Xorima"
  role     = "maintainer"
}

