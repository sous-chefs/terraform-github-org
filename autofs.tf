module "autofs" {
  source        = "./modules/repository"
  name          = "autofs"
  cookbook_team = github_team.autofs.id
}

resource "github_team" "autofs" {
  name        = "autofs"
  description = "autofs Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "autofs-damacus" {
  team_id  = github_team.autofs.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "autofs-xorima" {
  team_id  = github_team.autofs.id
  username = "Xorima"
  role     = "maintainer"
}

