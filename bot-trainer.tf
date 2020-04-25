module "bot-trainer" {
  source        = "./modules/repository"
  name          = "bot-trainer"
  cookbook_team = github_team.bot-trainer.id
}

resource "github_team" "bot-trainer" {
  name        = "bot-trainer"
  description = "bot-trainer Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "bot-trainer-maintainer-1" {
  team_id  = github_team.bot-trainer.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "bot-trainer-maintainer-2" {
  team_id  = github_team.bot-trainer.id
  username = "xorima"
  role     = "maintainer"
}

