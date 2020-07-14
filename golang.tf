module "golang" {
  source        = "./modules/repository"
  name          = "golang"
  cookbook_team = github_team.golang.id
}

resource "github_team" "golang" {
  name        = "golang"
  description = "golang Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "golang-maintainer-1" {
  team_id  = github_team.golang.id
  username = "jeffbyrnes"
  role     = "member"
}

resource "github_team_membership" "golang-maintainer-2" {
  team_id  = github_team.golang.id
  username = "JohnRoesler"
  role     = "maintainer"
}

resource "github_team_membership" "golang-maintainer-3" {
  team_id  = github_team.golang.id
  username = "MarkGibbons"
  role     = "maintainer"
}
