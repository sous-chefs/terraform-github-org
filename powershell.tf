module "powershell" {
  source                       = "./modules/repository"
  name                         = "powershell"
  cookbook_team                = github_team.powershell.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "powershell" {
  name        = "powershell"
  description = "powershell Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "powershell-maintainer-1" {
  team_id  = github_team.powershell.id
  username = "ramereth"
  role     = "maintainer"
}
