module "nscd" {
  source                       = "./modules/repository"
  name                         = "nscd"
  cookbook_team                = github_team.nscd.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "nscd" {
  name        = "nscd"
  description = "nscd Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nscd-maintainer-1" {
  team_id  = github_team.nscd.id
  username = "ramereth"
  role     = "maintainer"
}
