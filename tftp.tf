module "tftp" {
  source                 = "./modules/repository"
  name                   = "tftp"
  cookbook_team          = github_team.tftp.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "tftp" {
  name        = "tftp"
  description = "tftp Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "tftp-maintainer-1" {
  team_id  = github_team.tftp.id
  username = "ramereth"
  role     = "maintainer"
}
