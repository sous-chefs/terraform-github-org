module "atom" {
  source                       = "./modules/repository"
  name                         = "atom"
  cookbook_team                = github_team.atom.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "atom" {
  name        = "atom"
  description = "atom Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "atom-maintainer-1" {
  team_id  = github_team.atom.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "atom-maintainer-2" {
  team_id  = github_team.atom.id
  username = "MarkGibbons"
  role     = "maintainer"
}

