module "language-chef" {
  source         = "modules/repository"
  name           = "language-chef"
  cookbook_team  = "${github_team.language-chef.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
  description    = "Development repository for the language-chef plugin for the Atom text editor"
  homepage_url   = "https://atom.io/packages/language-chef"
}

resource "github_team" "language-chef" {
  name        = "language-chef"
  description = "Atom language-chef Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "language-chef-maintainer-1" {
  team_id  = "${github_team.language-chef.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "language-chef-maintainer-2" {
  team_id  = "${github_team.language-chef.id}"
  username = "pschaumburg"
  role     = "maintainer"
}
