module "confluence" {
  source         = "modules/repository"
  name           = "confluence"
  description    = "Sous Chefs confluence Cookbook"
  cookbook_team  = "${github_team.confluence_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "confluence_team" {
  name        = "confluence"
  description = "confluence Cookbook Maintainers"
  privacy     = "closed"
}
  
resource "github_team_membership" "confluence-maintainer-1" {
  team_id  = "${github_team.vscode_team.id}"
  username = "Xorima"
  role     = "maintainer"
}

resource "github_team_membership" "confluence-maintainer-2" {
  team_id  = "${github_team.vscode_team.id}"
  username = "damacus"
  role     = "maintainer"
}
