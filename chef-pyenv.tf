module "ruby_rbenv" {
  source        = "./modules/repository"
  name          = "chef-pyenv"
  cookbook_team = github_team.chef-pyenv.id
}

resource "github_team" "chef-pyenv" {
  name        = "chef-pyenv"
  description = "Pyenv Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef-pyenv-maintainer-1" {
  team_id  = github_team.chef-pyenv.id
  username = "darwin67"
  role     = "maintainer"
}
