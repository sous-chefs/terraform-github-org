module "yum-epel" {
  source                       = "./modules/repository"
  name                         = "yum-epel"
  cookbook_team                = github_team.yum-epel.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "yum-epel" {
  name        = "yum-epel"
  description = "yum-epel Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-epel-maintainer-1" {
  team_id  = github_team.yum-epel.id
  username = "ramereth"
  role     = "maintainer"
}
