module "nodejs" {
  source                       = "./modules/repository"
  name                         = "nodejs"
  cookbook_team                = github_team.nodejs.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "nodejs" {
  name        = "nodejs"
  description = "nodejs Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nodejs-maintainer-1" {
  team_id  = github_team.nodejs.id
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "nodejs-maintainer-2" {
  team_id  = github_team.nodejs.id
  username = "MarkGibbons"
  role     = "maintainer"
}
