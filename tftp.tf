module "tftp" {
  source                       = "./modules/repository"
  name                         = "tftp"
  cookbook_team                = github_team.tftp.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "tftp" {
  name        = "tftp"
  description = "tftp Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "tftp-maintainer-1" {
  team_id  = github_team.tftp.id
  username = "ramereth"
  role     = "maintainer"
}
