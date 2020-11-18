module "haproxy" {
  source                       = "./modules/repository"
  name                         = "haproxy"
  cookbook_team                = github_team.haproxy.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "haproxy" {
  name        = "haproxy"
  description = "HAProxy Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "haproxy-maintainer-2" {
  team_id  = github_team.haproxy.id
  username = "rshade"
  role     = "member"
}

resource "github_team_membership" "haproxy-maintainer-3" {
  team_id  = github_team.haproxy.id
  username = "JohnRoesler"
  role     = "maintainer"
}
