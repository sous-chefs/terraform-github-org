module "chef_ca" {
  source                       = "./modules/repository"
  name                         = "chef_ca"
  cookbook_team                = github_team.chef_ca.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "chef_ca" {
  name        = "chef_ca"
  description = "chef_ca Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef_ca-maintainer-1" {
  team_id  = github_team.chef_ca.id
  username = "MarkGibbons"
  role     = "maintainer"
}
