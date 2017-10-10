resource "github_issue_label" "jump_in" {
  repository = "${github_repository.repository}"
  name       = "Type: Jump-In"
  color      = "35e02e"
}

resource "github_issue_label" "feature_request" {
  repository = "${github_repository.repository}"
  name       = "Type: Feature Request"
  color      = "cbefb6"
}

resource "github_issue_label" "bug" {
  repository = "${github_repository.repository}"
  name       = "Type: Bug"
  color      = "9b1d20"
}

resource "github_issue_label" "documentation" {
  repository = "${github_repository.repository}"
  name       = "Type: Documentation"
  color      = "635d5c"
}

resource "github_issue_label" "maintenance" {
  repository = "${github_repository.repository}"
  name       = "Type: Maintenance"
  color      = "4e3e4e"
}

resource "github_issue_label" "high" {
  repository = "${github_repository.repository}"
  name       = "Priority: High"
  color      = "ad4648"
}

resource "github_issue_label" "medium" {
  repository = "${github_repository.repository}"
  name       = "Priority: Medium"
  color      = "bf6f71"
}

resource "github_issue_label" "low" {
  repository = "${github_repository.repository}"
  name       = "Priority: Low"
  color      = "d19899"
}

resource "github_issue_label" "blocked" {
  repository = "${github_repository.repository}"
  name       = "Status: Blocked"
  color      = "131611"
}

resource "github_issue_label" "in_progress" {
  repository = "${github_repository.repository}"
  name       = "Status: In Progress"
  color      = "5d6d53"
}

resource "github_issue_label" "on_hold" {
  repository = "${github_repository.repository}"
  name       = "Status: On Hold"
  color      = "675b28"
}
