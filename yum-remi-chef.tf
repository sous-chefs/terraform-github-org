module "yum-remi-chef" {
  source                       = "./modules/repository"
  name                         = "yum-remi-chef"
  cookbook_team                = github_team.yum-remi-chef.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "yum-remi-chef" {
  name        = "yum-remi-chef"
  description = "yum-remi-chef Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-remi-chef-maintainer-1" {
  team_id  = github_team.yum-remi-chef.id
  username = "ramereth"
  role     = "maintainer"
}
