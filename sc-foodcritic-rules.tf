module "sc-foodcritic-rules" {
  source         = "modules/repository"
  name           = "sc-foodcritic-rules"
  cookbook_team  = "${github_team.sc-foodcritic-rules.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "sc-foodcritic-rules" {
  name        = "sc-foodcritic-rules"
  description = "Ruby Build Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sc-foodcritic-rules-maintainer-1" {
  team_id  = "${github_team.sc-foodcritic-rules.id}"
  username = "shoekstra"
  role     = "maintainer"
}
