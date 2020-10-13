module "php" {
  source                 = "./modules/repository"
  name                   = "php"
  cookbook_team          = github_team.php.id
  label_validator_config = local.label_validator_config
}

resource "github_team" "php" {
  name        = "php"
  description = "php Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "php-maintainer-1" {
  team_id  = github_team.php.id
  username = "damacus"
  role     = "maintainer"
}

