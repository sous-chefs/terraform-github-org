module "postgresql" {
  source         = "modules/repository"
  name           = "postgresql"
  cookbook_team  = "${github_team.postgresql.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "postgresql" {
  name        = "postgresql"
  description = "PostgreSQL Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "postgresql-maintainer-1" {
  team_id  = "${github_team.postgresql.id}"
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "postgresql-maintainer-2" {
  team_id  = "${github_team.postgresql.id}"
  username = "teknofire"
  role     = "maintainer"
}
