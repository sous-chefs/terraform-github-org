module "emacs" {
  source        = "./modules/repository"
  name          = "emacs"
  cookbook_team = github_team.emacs.id
}

resource "github_team" "emacs" {
  name        = "emacs"
  description = "emacs Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "emacs-maintainer-1" {
  team_id  = github_team.emacs.id
  username = "tas50"
  role     = "maintainer"
}
