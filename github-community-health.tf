module "github" {
  source            = "./modules/repository"
  name              = ".github"
  cookbook_team     = github_team.board.id
  description       = "Community Health Files for Sous-Chefs repos"
  homepage_url      = "https://packagecontrol.io/packages/Chef"
  additional_topics = ["community"]
}
