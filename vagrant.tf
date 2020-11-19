module "vagrant" {
  source                       = "./modules/repository"
  name                         = "vagrant"
  cookbook_team                = github_team.vagrant.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "vagrant" {
  name        = "vagrant"
  description = "vagrant Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "vagrant-maintainer-1" {
  team_id  = github_team.vagrant.id
  username = "MarkGibbons"
  role     = "maintainer"
}

resource "github_team_membership" "vagrant-maintainer-2" {
  team_id  = github_team.vagrant.id
  username = "Xorima"
  role     = "maintainer"
}

