resource "github_team_repository" "website" {
  team_id    = github_team.board.id
  repository = "website"
  permission = "admin"
}

