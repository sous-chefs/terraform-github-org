module "bsdcpio" {
  source                       = "./modules/repository"
  name                         = "bsdcpio"
  cookbook_team                = github_team.bsdcpio.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "bsdcpio" {
  name        = "bsdcpio"
  description = "BSDCPIO Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "bsdcpio-maintainer-1" {
  team_id  = github_team.bsdcpio.id
  username = "josephholsten"
  role     = "maintainer"
}

