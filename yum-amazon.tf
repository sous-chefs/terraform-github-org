module "yum-amazon" {
  source                       = "./modules/repository"
  name                         = "yum-amazon"
  cookbook_team                = github_team.yum-amazon.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "yum-amazon" {
  name        = "yum-amazon"
  description = "yum-amazon Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-amazon-maintainer-1" {
  team_id  = github_team.yum-amazon.id
  username = "ramereth"
  role     = "maintainer"
}
