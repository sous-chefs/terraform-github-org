module "postfix" {
  source                 = "./modules/repository"
  name                   = "postfix"
  cookbook_team          = github_team.postfix.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "postfix" {
  name        = "postfix"
  description = "postfix Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "postfix-maintainer-1" {
  team_id  = github_team.postfix.id
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "postfix-maintainer-2" {
  team_id  = github_team.postfix.id
  username = "bmhughes"
  role     = "maintainer"
}
