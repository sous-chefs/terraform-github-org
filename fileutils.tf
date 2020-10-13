module "fileutils" {
  source                 = "./modules/repository"
  name                   = "fileutils"
  cookbook_team          = github_team.fileutils.id
  label_validator_config = local.label_validator_config
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
