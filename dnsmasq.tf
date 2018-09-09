module "dnsmasq" {
  source         = "modules/repository"
  name           = "dnsmasq"
  cookbook_team  = "${github_team.dnsmasq.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "dnsmasq" {
  name        = "dnsmasq"
  description = "dnsmasq Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "dnsmasq-maintainer-1" {
  team_id  = "${github_team.dnsmasq.id}"
  username = "damacus"
  role     = "maintainer"
}
