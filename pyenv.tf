module "pyenv" {
  source        = "./modules/repository"
  name          = "pyenv"
  cookbook_team = github_team.chef-pyenv.id
}

resource "github_team" "pyenv" {
  name        = "pyenv"
  description = "Pyenv Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "pyenv-maintainer-1" {
  team_id  = github_team.chef-pyenv.id
  username = "darwin67"
  role     = "maintainer"
}

resource "github_team_membership" "pyenv-maintainer-2" {
  team_id  = github_team.chef-pyenv.id
  username = "Xorima"
  role     = "maintainer"
}
