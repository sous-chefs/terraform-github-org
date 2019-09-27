module "haproxy" {
  source        = "./modules/repository"
  name          = "haproxy"
  cookbook_team = github_team.haproxy.id
}

resource "github_team" "haproxy" {
  name        = "haproxy"
  description = "HAProxy Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "haproxy-maintainer-2" {
  team_id  = github_team.haproxy.id
  username = "rshade"
  role     = "member"
}

resource "github_team_membership" "haproxy-maintainer-3" {
  team_id  = github_team.haproxy.id
  username = "JohnRoesler"
  role     = "member"
}

