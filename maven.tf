module "maven" {
  source                       = "./modules/repository"
  name                         = "maven"
  cookbook_team                = github_team.maven.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "maven" {
  name        = "maven"
  description = "maven Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "maven-maintainer-1" {
  team_id  = github_team.maven.id
  username = "ramereth"
  role     = "maintainer"
}
