module "apache2" {
  source         = "modules/repository"
  name           = "apache2"
  description    = "Development repository for the apache2 cookbook"
  cookbook_team  = "${github_team.apache2.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "apache2" {
  name        = "apache2"
  description = "apache Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "apache2-maintainer-1" {
  team_id  = "${github_team.apache2.id}"
  username = "svanzoest"
  role     = "member"
}

resource "github_team_membership" "apache2-maintainer-2" {
  team_id  = "${github_team.apache2.id}"
  username = "tas50"
  role     = "maintainer"
}
