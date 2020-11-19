module "samba" {
  source                       = "./modules/repository"
  name                         = "samba"
  cookbook_team                = github_team.samba.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "samba" {
  name        = "samba"
  description = "Samba Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "samba-maintainer" {
  team_id  = github_team.samba.id
  username = "damacus"
  role     = "maintainer"
}

