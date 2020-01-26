module "terraform-cloudflare" {
  source        = "./modules/repository"
  name          = "terraform-cloudflare"
  cookbook_team = github_team.board.id
  description   = "Repository to manage our Cloudflare settings"
  homepage_url  = "https://cloudflare.com"
}
