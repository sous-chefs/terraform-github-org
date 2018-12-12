module "ossec" {
  source         = "modules/repository"
  name           = "ossec"
  cookbook_team  = "${github_team.ossec.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "ossec" {
  name        = "ossec"
  description = "ossec Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "ossec-maintainer-1" {
  team_id  = "${github_team.ossec.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "ossec-maintainer-2" {
  team_id  = "${github_team.ossec.id}"
  username = "evan2645"
  role     = "member"
}

resource "github_team_membership" "ossec-maintainer-3" {
  team_id  = "${github_team.ossec.id}"
  username = "Sliim"
  role     = "maintainer"
}
