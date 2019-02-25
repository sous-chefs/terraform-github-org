module "ruby_build" {
  source         = "modules/repository"
  name           = "ruby_build"
  cookbook_team  = "${github_team.ruby_build.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "ruby_build" {
  name        = "ruby_build"
  description = "Ruby Build Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "ruby_build-maintainer-1" {
  team_id  = "${github_team.ruby_build.id}"
  username = "atheiman"
  role     = "maintainer"
}

resource "github_team_membership" "ruby_build-maintainer-2" {
  team_id  = "${github_team.ruby_build.id}"
  username = "damacus"
  role     = "maintainer"
}
