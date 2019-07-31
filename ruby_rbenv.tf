module "ruby_rbenv" {
  source        = "./modules/repository"
  name          = "ruby_rbenv"
  cookbook_team = github_team.ruby_rbenv.id
  status_checks = ["ci/circleci: lint"]
}

resource "github_team" "ruby_rbenv" {
  name        = "ruby_rbenv"
  description = "Ruby Build Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "ruby_rbenv-maintainer-1" {
  team_id  = github_team.ruby_rbenv.id
  username = "damacus"
  role     = "maintainer"
}

