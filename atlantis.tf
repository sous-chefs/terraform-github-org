module "atlantis" {
  source                 = "./modules/repository"
  name                   = "atlantis"
  cookbook_team          = github_team.atlantis.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "atlantis" {
  name        = "atlantis"
  description = "atlantis Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "atlantis-maintainer-1" {
  team_id  = github_team.atlantis.id
  username = "majormoses"
  role     = "maintainer"
}

resource "github_team_membership" "atlantis-maintainer-2" {
  team_id  = github_team.atlantis.id
  username = "axelrtgs"
  role     = "maintainer"
}
