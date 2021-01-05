module "openssh" {
  source                       = "./modules/repository"
  name                         = "openssh"
  cookbook_team                = github_team.openssh.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "openssh" {
  name        = "openssh"
  description = "openssh Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "openssh-maintainer-1" {
  team_id  = github_team.openssh.id
  username = "ramereth"
  role     = "maintainer"
}
