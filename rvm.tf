module "rvm" {
  source        = "modules/repository"
  name          = "rvm"
  cookbook_team = "${github_team.nginx.id}"
}

resource "github_team" "rvm" {
  name        = "rvm"
  description = "rvm Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rvm-maintainer-1" {
  team_id  = "${github_team.nginx.id}"
  username = "martinisoft"
  role     = "maintainer"
}
