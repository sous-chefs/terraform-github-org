module "apt" {
  source                       = "./modules/repository"
  name                         = "apt"
  cookbook_team                = github_team.apt.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "apt" {
  name        = "apt"
  description = "apt Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "apt-maintainer-1" {
  team_id  = github_team.apt.id
  username = "ramereth"
  role     = "maintainer"
}
