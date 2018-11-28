resource "github_team_repository" "edelight-chef-mongodb-transition" {
  team_id    = "${github_team.board.id}"
  repository = "edelight-chef-mongodb-transition"
  permission = "admin"
}

resource "github_repository" "edelight-chef-mongodb-transition" {
  name        = "edelight-chef-mongodb-transition"
  description = "MongoDB Chef cookbook"

  private            = false
  has_issues         = false
  has_wiki           = false
  has_projects       = false
  allow_merge_commit = true
  allow_squash_merge = true
  allow_rebase_merge = true
  has_downloads      = false
  archived           = true
}
