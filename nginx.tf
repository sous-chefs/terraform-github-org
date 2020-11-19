module "nginx" {
  source                       = "./modules/repository"
  name                         = "nginx"
  cookbook_team                = github_team.nginx.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "nginx" {
  name        = "nginx"
  description = "nginx Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nginx-maintainer-1" {
  team_id  = github_team.nginx.id
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "nginx-maintainer-2" {
  team_id  = github_team.nginx.id
  username = "MarkGibbons"
  role     = "maintainer"
}

resource "github_team_membership" "nginx-maintainer-3" {
  team_id  = github_team.nginx.id
  username = "bmhughes"
  role     = "maintainer"
}
