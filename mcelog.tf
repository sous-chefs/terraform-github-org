module "mcelog" {
  source                       = "./modules/repository"
  name                         = "mcelog"
  cookbook_team                = github_team.mcelog.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "mcelog" {
  name        = "mcelog"
  description = "mcelog Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "mcelog-maintainer-1" {
  team_id  = github_team.mcelog.id
  username = "ramereth"
  role     = "maintainer"
}
