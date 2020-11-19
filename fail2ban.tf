module "fail2ban" {
  source                       = "./modules/repository"
  name                         = "fail2ban"
  cookbook_team                = github_team.fail2ban.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "fail2ban" {
  name        = "fail2ban"
  description = "Fail2Ban Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "fail2ban-maintainer-1" {
  team_id  = github_team.fail2ban.id
  username = "Xorima"
  role     = "maintainer"
}
