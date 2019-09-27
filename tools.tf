module "orb-terraform" {
  source        = "./modules/repository"
  name          = "orb-terraform"
  description   = "Development repository for the orb-terraform cookbook"
    status_checks = ["ci/circleci: orb-lint"]
    cookbook_team = github_team.orb-terraform.id
}

resource "github_team" "orb-terraform" {
  name        = "orb-terraform"
  description = "orb-terraform Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "orb-terraform-maintainer-1" {
  team_id  = github_team.orb-terraform.id
  username = "damacus"
  role     = "maintainer"
}
