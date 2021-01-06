module "yum-ius" {
  source                       = "./modules/repository"
  name                         = "yum-ius"
  cookbook_team                = github_team.yum-ius.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "yum-ius" {
  name        = "yum-ius"
  description = "yum-ius Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-ius-maintainer-1" {
  team_id  = github_team.yum-ius.id
  username = "ramereth"
  role     = "maintainer"
}
