module "mysql_database" {
  source         = "modules/repository"
  name           = "mysql_database"
  description    = "Development repository for the MySQL Database cookbook"
  cookbook_team  = "${github_team.mysql_database_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "mysql_database_team" {
  name        = "mysql_database"
  description = "mysql_database Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "mysql_database-maintainer-1" {
  team_id  = "${github_team.mysql_database_team.id}"
  username = "rshade"
  role     = "maintainer"
}

resource "github_team_membership" "mysql_database-maintainer-2" {
  team_id  = "${github_team.mysql_database_team.id}"
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "mysql_database-maintainer-3" {
  team_id  = "${github_team.mysql_database_team.id}"
  username = "iennae"
  role     = "maintainer"
}
