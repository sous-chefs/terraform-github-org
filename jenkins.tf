module "jenkins" {
  source                       = "./modules/repository"
  name                         = "jenkins"
  cookbook_team                = github_team.jenkins.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "jenkins" {
  name        = "jenkins"
  description = "jenkins Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "jenkins-maintainer-1" {
  team_id  = github_team.jenkins.id
  username = "ramereth"
  role     = "maintainer"
}
