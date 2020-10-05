module "erlang" {
  source        = "./modules/repository"
  name          = "erlang"
  cookbook_team = github_team.erlang.id
}

resource "github_team" "erlang" {
  name        = "erlang"
  description = "erlang Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "erlang-maintainer-1" {
  team_id  = github_team.erlang.id
  username = "tas50"
  role     = "maintainer"
}
