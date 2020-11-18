module "kafka" {
  source                       = "./modules/repository"
  name                         = "kafka"
  cookbook_team                = github_team.kafka.id
  label_validator_config       = local.label_validator_config
  changelog_reset_config       = local.changelog_reset_config
  changelog_validator_config   = local.changelog_validator_config
  cookbook_auto_release_config = local.cookbook_auto_release_config
}

resource "github_team" "kafka" {
  name        = "kafka"
  description = "kafka Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "kafka-maintainer-1" {
  team_id  = github_team.kafka.id
  username = "Xorima"
  role     = "maintainer"
}

