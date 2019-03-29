module "nano" {
  source        = "modules/repository"
  name          = "nano"
  cookbook_team = "${github_team.nano.id}"
  status_checks = ["ci/circleci: delivery"]
}

resource "github_team" "nano" {
  name        = "nano"
  description = "Nano Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nano-maintainer-1" {
  team_id  = "${github_team.nano.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "nano-maintainer-2" {
  team_id  = "${github_team.nano.id}"
  username = "Xorima"
  role     = "maintainer"
}
