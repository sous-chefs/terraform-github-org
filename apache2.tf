resource "github_team" "apache2" {
  name        = "apache2"
  description = "apache Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "apache2-maintainer-1" {
  team_id  = "${github_team.apache2.id}"
  username = "svanzoest"
  role     = "maintainer"
}

resource "github_team_membership" "apache2-maintainer-2" {
  team_id  = "${github_team.apache2.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_repository" "apache2_repo" {
  team_id    = "${github_team.apache2.id}"
  repository = "apache2"
  permission = "admin"
}
