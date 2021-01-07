module "notepadpp" {
  source                       = "./modules/repository"
  name                         = "notepadpp"
  cookbook_team                = github_team.notepadpp.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "notepadpp" {
  name        = "notepadpp"
  description = "notepadpp Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "notepadpp-maintainer-1" {
  team_id  = github_team.notepadpp.id
  username = "ramereth"
  role     = "maintainer"
}
