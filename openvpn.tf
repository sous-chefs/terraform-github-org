module "openvpn" {
  source                       = "./modules/repository"
  name                         = "openvpn"
  cookbook_team                = github_team.openvpn.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "openvpn" {
  name        = "openvpn"
  description = "OpenVPN Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "openvpn-maintainer-1" {
  team_id  = github_team.openvpn.id
  username = "flaccid"
  role     = "maintainer"
}

resource "github_team_membership" "openvpn-maintainer-2" {
  team_id  = github_team.openvpn.id
  username = "jeffbyrnes"
  role     = "maintainer"
}

