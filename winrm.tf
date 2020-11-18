module "winrm" {
  source                       = "./modules/repository"
  name                         = "winrm"
  homepage_url                 = "https://supermarket.chef.io/cookbooks/winrm"
  cookbook_team                = github_team.winrm.id
  status_checks                = ["continuous-integration/appveyor/pr"]
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "winrm" {
  name        = "winrm"
  description = "WinRM Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "winrm-maintainer" {
  team_id  = github_team.winrm.id
  username = "ev0ldave"
  role     = "maintainer"
}

