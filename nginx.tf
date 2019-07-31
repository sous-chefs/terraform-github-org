module "nginx" {
  source        = "./modules/repository"
  name          = "nginx"
  cookbook_team = github_team.nginx.id
}

resource "github_team" "nginx" {
  name        = "nginx"
  description = "nginx Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nginx-maintainer-1" {
  team_id  = github_team.nginx.id
  username = "tas50"
  role     = "maintainer"
}

