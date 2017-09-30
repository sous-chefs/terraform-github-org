module "filesystem" {
  source         = "modules/repository"
  name           = "filesystem"
  cookbook_team  = "${github_team.filesystem.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "filesystem" {
  name        = "filesystem"
  description = "Filesystem Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "filesystem-maintainer-1" {
  team_id  = "${github_team.filesystem.id}"
  username = "rshade"
  role     = "maintainer"
}
