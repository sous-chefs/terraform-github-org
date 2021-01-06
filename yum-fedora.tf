module "yum-fedora" {
  source                       = "./modules/repository"
  name                         = "yum-fedora"
  cookbook_team                = github_team.yum-fedora.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "yum-fedora" {
  name        = "yum-fedora"
  description = "yum-fedora Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "yum-fedora-maintainer-1" {
  team_id  = github_team.yum-fedora.id
  username = "ramereth"
  role     = "maintainer"
}
