module "nano" {
  source         = "modules/repository"
  name           = "nano"
  description    = "Development repository for the Nano cookbook"
  homepage_url   = "https://supermarket.chef.io/cookbooks/nano"
  cookbook_team  = "${github_team.nano_team.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "nano_team" {
  name        = "nano"
  description = "Nano Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nano-maintainer-1" {
  team_id  = "${github_team.nano_team.id}"
  username = "tas50"
  role     = "maintainer"
}
