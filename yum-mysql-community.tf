module "yum-mysql-community" {
  source                       = "./modules/repository"
  name                         = "yum-mysql-community"
  cookbook_team                = github_team.yum-mysql-community.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "yum-mysql-community" {
  name        = "yum-mysql-community"
  description = "yum-mysql-community Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-mysql-community-maintainer-1" {
  team_id  = github_team.yum-mysql-community.id
  username = "ramereth"
  role     = "maintainer"
}
