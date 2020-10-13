module "nginx_simplecgi" {
  source                 = "./modules/repository"
  name                   = "nginx_simplecgi"
  cookbook_team          = github_team.nginx_simplecgi.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "nginx_simplecgi" {
  name        = "nginx_simplecgi"
  description = "nginx_simplecgi Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "nginx_simplecgi-maintainer-1" {
  team_id  = github_team.nginx_simplecgi.id
  username = "tas50"
  role     = "maintainer"
}

