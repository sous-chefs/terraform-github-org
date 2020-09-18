module "foreman" {
  source        = "./modules/repository"
  name          = "foreman"
  cookbook_team = github_team.foreman.id
}

resource "github_team" "foreman" {
  name        = "foreman"
  description = "foreman Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "foreman-maintainer-1" {
  team_id  = github_team.foreman.id
  username = "tas50"
  role     = "maintainer"
}
