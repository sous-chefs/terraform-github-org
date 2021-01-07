module "beyondcompare" {
  source                       = "./modules/repository"
  name                         = "beyondcompare"
  cookbook_team                = github_team.beyondcompare.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "beyondcompare" {
  name        = "beyondcompare"
  description = "beyondcompare Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "beyondcompare-maintainer-1" {
  team_id  = github_team.beyondcompare.id
  username = "ramereth"
  role     = "maintainer"
}
