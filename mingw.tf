module "mingw" {
  source                       = "./modules/repository"
  name                         = "mingw"
  cookbook_team                = github_team.mingw.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "mingw" {
  name        = "mingw"
  description = "mingw Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "mingw-maintainer-1" {
  team_id  = github_team.mingw.id
  username = "ramereth"
  role     = "maintainer"
}
