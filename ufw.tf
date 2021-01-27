module "ufw" {
  source                       = "./modules/repository"
  name                         = "ufw"
  cookbook_team                = github_team.ufw.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "ufw" {
  name        = "ufw"
  description = "ufw Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "ufw-maintainer-1" {
  team_id  = github_team.ufw.id
  username = "ramereth"
  role     = "maintainer"
}
