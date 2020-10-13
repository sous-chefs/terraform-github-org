module "prometheus" {
  source                 = "./modules/repository"
  name                   = "prometheus"
  cookbook_team          = github_team.prometheus.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "prometheus" {
  name        = "prometheus"
  description = "prometheus Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "prometheus-maintainer-1" {
  team_id  = github_team.prometheus.id
  username = "mbaitelman"
  role     = "member"
}

resource "github_team_membership" "prometheus-maintainer-2" {
  team_id  = github_team.prometheus.id
  username = "ramereth"
  role     = "maintainer"
}
