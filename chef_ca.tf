module "chef_ca" {
  source        = "./modules/repository"
  name          = "chef_ca"
  cookbook_team = github_team.chef_ca.id
}

resource "github_team" "chef_ca" {
  name        = "chef_ca"
  description = "chef_ca Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "chef_ca-maintainer-1" {
  team_id  = github_team.chef_ca.id
  username = "MarkGibbons"
  role     = "maintainer"
}
