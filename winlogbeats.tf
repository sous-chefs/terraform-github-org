module "winlogbeats" {
  source        = "./modules/repository"
  name          = "winlogbeats"
  cookbook_team = github_team.winlogbeats.id
}

resource "github_team" "winlogbeats" {
  name        = "winlogbeats"
  description = "winlogbeats Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "winlogbeats-maintainer-1" {
  team_id  = github_team.winlogbeats.id
  username = "tas50"
  role     = "maintainer"
}
