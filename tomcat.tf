module "tomcat" {
  source                       = "./modules/repository"
  name                         = "tomcat"
  cookbook_team                = github_team.tomcat.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "tomcat" {
  name        = "tomcat"
  description = "tomcat Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "tomcat-maintainer-1" {
  team_id  = github_team.tomcat.id
  username = "tas50"
  role     = "maintainer"
}
