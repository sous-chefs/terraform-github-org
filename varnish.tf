module "varnish" {
  source                       = "./modules/repository"
  name                         = "varnish"
  cookbook_team                = github_team.varnish.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "varnish" {
  name        = "varnish"
  description = "Varnish Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "varnish-maintainer-1" {
  team_id  = github_team.varnish.id
  username = "martinb3"
  role     = "maintainer"
}

resource "github_team_membership" "varnish-maintainer-2" {
  team_id  = github_team.varnish.id
  username = "rshade"
  role     = "member"
}

resource "github_team_membership" "varnish-maintainer-3" {
  team_id  = github_team.varnish.id
  username = "RyanJarv"
  role     = "member"
}

