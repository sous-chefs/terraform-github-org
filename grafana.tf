module "grafana" {
  source                     = "modules/repository"
  name                       = "grafana"
  cookbook_team              = "${github_team.grafana.id}"
  require_code_owner_reviews = true
  status_checks              = ["ci/circleci: delivery"]
}

resource "github_team" "grafana" {
  name        = "grafana"
  description = "grafana Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "grafana-maintainer-1" {
  team_id  = "${github_team.grafana.id}"
  username = "abilun"
  role     = "maintainer"
}

resource "github_team_membership" "grafana-maintainer-2" {
  team_id  = "${github_team.grafana.id}"
  username = "Xorima"
  role     = "maintainer"
}
