resource "github_team" "board" {
  name        = "Board"
  description = "Board members"
  privacy     = "closed"
}

resource "github_team_membership" "damacus-board" {
  team_id  = github_team.board.id
  username = "damacus"
  role     = "maintainer"
}

resource "github_team_membership" "ramereth-board" {
  team_id  = github_team.board.id
  username = "ramereth"
  role     = "maintainer"
}

resource "github_team_membership" "tas50-board" {
  team_id  = github_team.board.id
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "xorima-board" {
  team_id  = github_team.board.id
  username = "Xorima"
  role     = "maintainer"
}

resource "github_team_membership" "kitchen-porter-board" {
  team_id  = github_team.board.id
  username = "kitchen-porter"
  role     = "maintainer"
}

