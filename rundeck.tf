resource "github_team" "rundeck" {
  name        = "rundeck"
  description = "Rundeck Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rundeck-maintainer" {
  team_id  = "${github_team.rundeck.id}"
  username = "ev0ldave"
  role     = "maintainer"
}

resource "github_team_membership" "rundeck-maintainer-2" {
  team_id  = "${github_team.rundeck.id}"
  username = "pcross616"
  role     = "maintainer"
}

resource "github_team_repository" "rundeck_repo" {
  team_id    = "${github_team.rundeck.id}"
  repository = "rundeck"
  permission = "admin"
}
