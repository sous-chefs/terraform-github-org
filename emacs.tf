module "emacs" {
  source                       = "./modules/repository"
  name                         = "emacs"
  cookbook_team                = github_team.emacs.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "emacs" {
  name        = "emacs"
  description = "emacs Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "emacs-maintainer-1" {
  team_id  = github_team.emacs.id
  username = "tas50"
  role     = "maintainer"
}
