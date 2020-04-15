module "vim" {
  source        = "./modules/repository"
  name          = "vim"
  cookbook_team = github_team.vim.id
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
