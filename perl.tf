module "perl" {
  source                 = "./modules/repository"
  name                   = "perl"
  cookbook_team          = github_team.perl.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "perl" {
  name        = "perl"
  description = "perl Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "perl-maintainer-1" {
  team_id  = github_team.perl.id
  username = "ramereth"
  role     = "maintainer"
}
