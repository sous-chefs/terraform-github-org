resource "github_team" "postgresql_team" {
  name        = "postgresql"
  description = "PostgreSQL Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "postgresql-maintainer-1" {
  team_id  = "${github_team.postgresql_team.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "postgresql-maintainer-2" {
  team_id  = "${github_team.postgresql_team.id}"
  username = "teknofire"
  role     = "maintainer"
}

resource "github_team_repository" "postgresql_repo" {
  team_id    = "${github_team.postgresql_team.id}"
  repository = "postgresql"
  permission = "admin"
}
