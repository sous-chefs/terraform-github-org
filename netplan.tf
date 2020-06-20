module "netplan" {
  source        = "./modules/repository"
  name          = "netplan"
  cookbook_team = github_team.netplan.id
}

resource "github_team" "netplan" {
  name        = "netplan"
  description = "netplan Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "netplan-maintainer-1" {
  team_id  = github_team.netplan.id
  username = "Xorima"
  role     = "maintainer"
}
