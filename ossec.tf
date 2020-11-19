module "ossec" {
  source                       = "./modules/repository"
  name                         = "ossec"
  cookbook_team                = github_team.ossec.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "ossec" {
  name        = "ossec"
  description = "ossec Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "ossec-maintainer-1" {
  team_id  = github_team.ossec.id
  username = "tas50"
  role     = "maintainer"
}

