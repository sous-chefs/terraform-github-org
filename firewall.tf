module "firewall" {
  source                       = "./modules/repository"
  name                         = "firewall"
  cookbook_team                = github_team.firewall.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "firewall" {
  name        = "firewall"
  description = "firewall Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "firewall-maintainer-1" {
  team_id  = github_team.firewall.id
  username = "ramereth"
  role     = "maintainer"
}
