module "vim" {
  source                       = "./modules/repository"
  name                         = "vim"
  cookbook_team                = github_team.vim.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "vim" {
  name        = "vim"
  description = "vim Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "vim-maintainer-1" {
  team_id  = github_team.vim.id
  username = "tas50"
  role     = "maintainer"
}
