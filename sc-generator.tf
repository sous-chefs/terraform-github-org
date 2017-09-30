module "sc-generator" {
  source         = "modules/repository"
  name           = "sc-generator"
  cookbook_team  = "${github_team.sc-generator.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "sc-generator" {
  name        = "sc-generator"
  description = "Cookbook Generator Maintainers"
  privacy     = "closed"
}
