resource "github_team" "line_team" {
  name        = "line"
  description = "Line Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "line-maintainer-1" {
  team_id  = "${github_team.line_team.id}"
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "line-maintainer-2" {
  team_id  = "${github_team.line_team.id}"
  username = "someara"
  role     = "maintainer"
}

resource "github_team_repository" "line_repo" {
  team_id    = "${github_team.line_team.id}"
  repository = "line-cookbook"
  permission = "admin"
}
