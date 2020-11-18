module "kismet" {
  source                       = "./modules/repository"
  name                         = "kismet"
  cookbook_team                = github_team.kismet.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "kismet" {
  name        = "kismet"
  description = "kismet Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "kismet-maintainer-1" {
  team_id  = github_team.kismet.id
  username = "tas50"
  role     = "maintainer"
}

