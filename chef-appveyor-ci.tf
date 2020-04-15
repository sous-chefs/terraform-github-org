module "chef-appveyor-ci" {
  source        = "./modules/repository"
  name          = "chef-appveyor-ci"
  cookbook_team = github_team.chef-appveyor-ci.id
}

resource "github_team" "chef-appveyor-ci" {
  name        = "chef-appveyor-ci"
  description = "chef-appveyor-ci Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef-appveyor-ci-maintainer-1" {
  team_id  = github_team.chef-appveyor-ci.id
  username = "tas50"
  role     = "maintainer"
}
