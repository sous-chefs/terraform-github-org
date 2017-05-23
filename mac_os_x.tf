resource "github_team" "mac_os_x_team" {
  name        = "mac_os_x"
  description = "Mac OS X Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "mac_os_x-maintainer-1" {
  team_id  = "${github_team.mac_os_x_team.id}"
  username = "damacus"
  role     = "member"
}

resource "github_team_membership" "mac_os_x-maintainer-2" {
  team_id  = "${github_team.mac_os_x_team.id}"
  username = "kameghamegha"
  role     = "maintainer"
}

resource "github_team_repository" "mac_os_x_repo" {
  team_id    = "${github_team.mac_os_x_team.id}"
  repository = "mac_os_x"
  permission = "admin"
}
