module "cpu" {
  source                 = "./modules/repository"
  name                   = "cpu"
  cookbook_team          = github_team.cpu.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "cpu" {
  name        = "cpu"
  description = "cpu Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "cpu-maintainer-1" {
  team_id  = github_team.cpu.id
  username = "tas50"
  role     = "maintainer"
}
