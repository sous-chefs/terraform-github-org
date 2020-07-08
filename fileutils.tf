module "fileutils" {
  source        = "./modules/repository"
  name          = "fileutils"
  cookbook_team = github_team.fileutils.id
}

resource "github_team" "fileutils" {
  name        = "fileutils"
  description = "fileutils Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "fileutils-maintainer-1" {
  team_id  = github_team.fileutils.id
  username = "MarkGibbons"
  role     = "maintainer"
}
