module "htpasswd" {
  source                       = "./modules/repository"
  name                         = "htpasswd"
  cookbook_team                = github_team.htpasswd.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "htpasswd" {
  name        = "htpasswd"
  description = "htpasswd Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "htpasswd-maintainer-1" {
  team_id  = github_team.htpasswd.id
  username = "tas50"
  role     = "maintainer"
}
