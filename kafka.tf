module "kafka" {
  source        = "modules/repository"
  name          = "kafka"
  cookbook_team = "${github_team.kafka.id}"
  status_checks = ["ci/circleci: delivery"]
}

resource "github_team" "kafka" {
  name        = "kafka"
  description = "kafka Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "kafka-maintainer-1" {
  team_id  = "${github_team.kafka.id}"
  username = "Xorima"
  role     = "maintainer"
}
