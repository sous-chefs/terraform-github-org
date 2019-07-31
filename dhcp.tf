module "dhcp" {
  source        = "./modules/repository"
  name          = "dhcp"
  cookbook_team = github_team.dhcp.id
}

resource "github_team" "dhcp" {
  name        = "dhcp"
  description = "DHCP Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "dhcp-maintainer-1" {
  team_id  = github_team.dhcp.id
  username = "shortdudey123"
  role     = "maintainer"
}

resource "github_team_membership" "dhcp-maintainer-2" {
  team_id  = github_team.dhcp.id
  username = "Xorima"
  role     = "maintainer"
}

