module "meta" {
  source            = "./modules/repository"
  name              = "meta"
  cookbook_team     = github_team.board.id
  description       = " Discussion about Sous Chefs "
  homepage_url      = "https://sous-chefs.org"
  additional_topics = ["community"]
}
