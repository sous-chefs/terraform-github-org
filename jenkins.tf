module "jenkins" {
  source                 = "./modules/repository"
  name                   = "jenkins"
  cookbook_team          = github_team.jenkins.id
  label_validator_config = local.label_validator_config
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
