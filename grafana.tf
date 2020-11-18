module "grafana" {
  source                       = "./modules/repository"
  name                         = "grafana"
  cookbook_team                = github_team.grafana.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "grafana" {
  name        = "grafana"
  description = "grafana Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "grafana-maintainer-1" {
  team_id  = github_team.grafana.id
  username = "axelrtgs"
  role     = "maintainer"
}

resource "github_team_membership" "grafana-maintainer-2" {
  team_id  = github_team.grafana.id
  username = "Xorima"
  role     = "maintainer"
}
