module "dnsmasq" {
  source        = "./modules/repository"
  name          = "dnsmasq"
  cookbook_team = github_team.dnsmasq.id
}

resource "github_team" "dnsmasq" {
  name        = "dnsmasq"
  description = "dnsmasq Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "dnsmasq-maintainer-1" {
  team_id  = github_team.dnsmasq.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "dnsmasq-maintainer-2" {
  team_id  = github_team.dnsmasq.id
  username = "MarkGibbons"
  role     = "maintainer"
}
