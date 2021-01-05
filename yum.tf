module "yum" {
  source                       = "./modules/repository"
  name                         = "yum"
  cookbook_team                = github_team.yum.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "yum" {
  name        = "yum"
  description = "yum Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-maintainer-1" {
  team_id  = github_team.yum.id
  username = "ramereth"
  role     = "maintainer"
}
