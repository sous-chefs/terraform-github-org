module "vscode" {
  source         = "modules/repository"
  name           = "vscode"
  cookbook_team  = "${github_team.vscode.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "vscode" {
  name        = "vscode"
  description = "VSCode Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "vscode-maintainer-1" {
  team_id  = "${github_team.vscode.id}"
  username = "Xorima"
  role     = "maintainer"
}

resource "github_team_membership" "vscode-maintainer-2" {
  team_id  = "${github_team.vscode.id}"
  username = "damacus"
  role     = "maintainer"
}
