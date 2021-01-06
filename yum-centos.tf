module "yum-centos" {
  source                       = "./modules/repository"
  name                         = "yum-centos"
  cookbook_team                = github_team.yum-centos.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "yum-centos" {
  name        = "yum-centos"
  description = "yum-centos Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-centos-maintainer-1" {
  team_id  = github_team.yum-centos.id
  username = "ramereth"
  role     = "maintainer"
}
