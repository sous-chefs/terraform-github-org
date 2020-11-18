module "network_interfaces" {
  source                       = "./modules/repository"
  name                         = "network_interfaces"
  cookbook_team                = github_team.network_interfaces.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "network_interfaces" {
  name        = "network_interfaces"
  description = "network_interfaces Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "network_interfaces-maintainer-1" {
  team_id  = github_team.network_interfaces.id
  username = "tas50"
  role     = "maintainer"
}
