module "snort" {
  source         = "modules/repository"
  name           = "snort"
  cookbook_team  = "${github_team.snort_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "snort_team" {
  name        = "snort"
  description = "snort Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "snort-maintainer-1" {
  team_id  = "${github_team.snort_team.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "snort-maintainer-2" {
  team_id  = "${github_team.snort_team.id}"
  username = "jtimberman"
  role     = "member"
}
