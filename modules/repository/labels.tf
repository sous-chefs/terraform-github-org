resource "github_issue_label" "first_issue" {
  repository = "${github_repository.repository.name}"
  name       = "good first issue"
  color      = "159818"
}

resource "github_issue_label" "help_wanted" {
  repository = "${github_repository.repository.name}"
  name       = "help wanted"
  color      = "159818"
}


resource "github_issue_label" "feature_request" {
  repository = "${github_repository.repository.name}"
  name       = "Type: Feature Request"
  color      = "86B7E9"
}

resource "github_issue_label" "bug" {
  repository = "${github_repository.repository.name}"
  name       = "Type: Bug"
  color      = "b60205"
}

resource "github_issue_label" "documentation" {
  repository = "${github_repository.repository.name}"
  name       = "Type: Documentation"
  color      = "635d5c"
}

resource "github_issue_label" "maintenance" {
  repository = "${github_repository.repository.name}"
  name       = "Type: Maintenance"
  color      = "4e3e4e"
}

resource "github_issue_label" "high" {
  repository = "${github_repository.repository.name}"
  name       = "Priority: High"
  color      = "b60205"
}

resource "github_issue_label" "medium" {
  repository = "${github_repository.repository.name}"
  name       = "Priority: Medium"
  color      = "bf6f71"
}

resource "github_issue_label" "low" {
  repository = "${github_repository.repository.name}"
  name       = "Priority: Low"
  color      = "c2e0c6"
}

resource "github_issue_label" "blocked" {
  repository = "${github_repository.repository.name}"
  name       = "Status: Blocked"
  color      = "131611"
}

resource "github_issue_label" "in_progress" {
  repository = "${github_repository.repository.name}"
  name       = "Status: In Progress"
  color      = "159818"
}

resource "github_issue_label" "on_hold" {
  repository = "${github_repository.repository.name}"
  name       = "Status: On Hold"
  color      = "675b28"
}

resource "github_issue_label" "pending_feedback" {
  repository = "${github_repository.repository.name}"
  name       = "Status: Pending Contributor"
  color      = "191919"
}

resource "github_issue_label" "duplicate" {
  repository = "${github_repository.repository.name}"
  name       = "Duplicate"
  color      = "cccccc"
}
