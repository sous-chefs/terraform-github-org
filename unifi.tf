module "unifi" {
  source        = "modules/repository"
  name          = "unifi"
  cookbook_team = "${github_team.unifi.id}"
  status_checks = ["ci/circleci: delivery"]
}

resource "github_team" "unifi" {
  name        = "unifi"
  description = "unifi Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "unifi-maintainer-1" {
  team_id  = "${github_team.unifi.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "unifi-maintainer-2" {
  team_id  = "${github_team.unifi.id}"
  username = "Xorima"
  role     = "maintainer"
}
