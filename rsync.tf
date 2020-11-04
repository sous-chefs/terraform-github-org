module "rsync" {
  source                 = "./modules/repository"
  name                   = "rsync"
  cookbook_team          = github_team.rsync.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "rsync" {
  name        = "rsync"
  description = "rsync Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "rsync-maintainer-1" {
  team_id  = github_team.rsync.id
  username = "ramereth"
  role     = "maintainer"
}
