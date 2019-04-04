module "confluence" {
  source        = "modules/repository"
  name          = "confluence"
  description   = "Sous Chefs confluence Cookbook"
  cookbook_team = "${github_team.confluence.id}"
}

resource "github_team" "confluence" {
  name        = "confluence"
  description = "confluence Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "confluence-maintainer-1" {
  team_id  = "${github_team.confluence.id}"
  username = "Xorima"
  role     = "maintainer"
}

resource "github_team_membership" "confluence-maintainer-2" {
  team_id  = "${github_team.confluence.id}"
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "confluence-maintainer-3" {
  team_id  = "${github_team.confluence.id}"
  username = "sinfomicien"
  role     = "maintainer"
}
