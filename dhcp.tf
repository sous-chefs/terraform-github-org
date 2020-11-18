module "dhcp" {
  source                       = "./modules/repository"
  name                         = "dhcp"
  cookbook_team                = github_team.dhcp.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "dhcp" {
  name        = "dhcp"
  description = "DHCP Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "dhcp-maintainer-1" {
  team_id  = github_team.dhcp.id
  username = "shortdudey123"
  role     = "maintainer"
}

resource "github_team_membership" "dhcp-maintainer-2" {
  team_id  = github_team.dhcp.id
  username = "Xorima"
  role     = "maintainer"
}

resource "github_team_membership" "dhcp-maintainer-3" {
  team_id  = github_team.dhcp.id
  username = "bmhughes"
  role     = "maintainer"
}
