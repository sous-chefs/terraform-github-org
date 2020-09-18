module "htpasswd" {
  source        = "./modules/repository"
  name          = "htpasswd"
  cookbook_team = github_team.htpasswd.id
}

resource "github_team" "htpasswd" {
  name        = "htpasswd"
  description = "htpasswd Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "htpasswd-maintainer-1" {
  team_id  = github_team.htpasswd.id
  username = "tas50"
  role     = "maintainer"
}
