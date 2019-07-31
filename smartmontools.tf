module "smartmontools" {
  source        = "./modules/repository"
  name          = "smartmontools"
  cookbook_team = github_team.smartmontools.id
}

resource "github_team" "smartmontools" {
  name        = "smartmontools"
  description = "SmartMonTools Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "smartmontools-maintainer-1" {
  team_id  = github_team.smartmontools.id
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "smartmontools-maintainer-2" {
  team_id  = github_team.smartmontools.id
  username = "Xorima"
  role     = "maintainer"
}

