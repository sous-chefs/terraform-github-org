module "sc-mysql" {
  source         = "modules/repository"
  name           = "sc-mysql"
  description    = "Sous Chefs MySQL Cookbook"
  cookbook_team  = "${github_team.sc-mysql_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "sc-mysql_team" {
  name        = "sc-mysql"
  description = "sc-mysql Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sc-mysql-maintainer-1" {
  team_id  = "${github_team.sc-mysql_team.id}"
  username = "rshade"
  role     = "maintainer"
}

resource "github_team_membership" "sc-mysql-maintainer-2" {
  team_id  = "${github_team.sc-mysql_team.id}"
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "sc-mysql-maintainer-3" {
  team_id  = "${github_team.sc-mysql_team.id}"
  username = "iennae"
  role     = "maintainer"
}
