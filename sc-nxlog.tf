module "sc-nxlog" {
  source        = "modules/repository"
  name          = "sc-nxlog"
  cookbook_team = "${github_team.sc-nxlog.id}"
}

resource "github_team" "sc-nxlog" {
  name        = "sc-nxlog"
  description = "sc-nxlog Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "sc-nxlog-maintainer-1" {
  team_id  = "${github_team.sc-nxlog.id}"
  username = "Xorima"
  role     = "maintainer"
}
