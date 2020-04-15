module "sublimechef" {
  source            = "./modules/repository"
  name              = "sublimechef"
  cookbook_team     = github_team.sublimechef.id
  description       = "A Sublime Text 2 Package for authoring Chef related files"
  homepage_url      = "https://packagecontrol.io/packages/Chef"
  additional_topics = ["ide", "sublime-text"]
}

resource "github_team" "sublimechef" {
  name        = "sublimechef"
  description = "sublimechef IDE Plugin Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sublimechef-maintainer-1" {
  team_id  = github_team.sublimechef.id
  username = "tas50"
  role     = "maintainer"
}
