resource "github_repository" "repository" {
  name         = var.name
  description  = local.description
  homepage_url = local.homepage_url

  visibility             = "public"
  has_issues             = true
  has_wiki               = var.has_wiki
  has_projects           = var.has_projects
  allow_merge_commit     = true
  allow_squash_merge     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true
  has_downloads          = false
  archived               = var.archived
  topics                 = local.topics

  # this automatically creates a commit and pushes to master and is needed
  # because your can't add branch protection for an uninitialized repo
  # since the branch will not exist yet. It is only relevant during repo
  # creation from GitHub API side but we also use it to determine if branch
  # protections should be enabled.
  auto_init = var.auto_init

  # this is a terrible hack that is needed because of
  # https://github.com/terraform-providers/terraform-provider-github/issues/155
  # NOTE: that we only do this on the repo and still care about it when looking
  # at branch protection
  lifecycle {
    ignore_changes = [auto_init]
  }
}

resource "github_branch_protection" "repository_master" {
  # this is a bit of a hack to allow people to create repositories uninitialized
  # and then add branch protection later. The use cases are mostly around needing
  # to create "forked" private repositories
  count = var.auto_init ? 1 : 0

  repository_id  = github_repository.repository.id
  pattern        = "master"
  enforce_admins = var.enforce_admins

  required_status_checks {
    strict   = var.require_ci_pass
    contexts = local.status_checks
  }

  required_pull_request_reviews {
    dismiss_stale_reviews      = var.dismiss_stale_reviews
    require_code_owner_reviews = var.require_code_owner_reviews
  }

}

resource "github_team_repository" "restricted_access" {
  team_id    = var.cookbook_team
  repository = github_repository.repository.name
  permission = var.archived ? "pull" : var.team_permission
}

resource "github_repository_webhook" "label_validator" {
  repository = github_repository.repository.name
  count      = var.label_validator_config.enabled ? 1 : 0

  configuration {
    url          = var.label_validator_config.url
    content_type = "form"
    insecure_ssl = false
    secret       = var.label_validator_config.secret
  }
  active = true
  events = ["pull_request"]
}

resource "github_repository_webhook" "changelog_reset" {
  repository = github_repository.repository.name
  count      = var.changelog_reset_config.enabled ? 1 : 0

  configuration {
    url          = var.changelog_reset_config.url
    content_type = "form"
    insecure_ssl = false
    secret       = var.changelog_reset_config.secret
  }
  active = true
  events = ["release"]
}

resource "github_repository_webhook" "changelog_validator" {
  repository = github_repository.repository.name
  count      = var.changelog_validator_config.enabled ? 1 : 0

  configuration {
    url          = var.changelog_validator_config.url
    content_type = "form"
    insecure_ssl = false
    secret       = var.changelog_validator_config.secret
  }
  active = true
  events = ["pull_request"]
}

resource "github_repository_webhook" "cookbook_release_validator" {
  repository = github_repository.repository.name
  count      = var.cookbook_auto_release_config.enabled ? 1 : 0

  configuration {
    url          = var.cookbook_auto_release_config.cookbook_release_validator_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.cookbook_auto_release_config.secret
  }
  active = true
  events = ["pull_request"]
}

resource "github_repository_webhook" "cookbook_release_creator" {
  repository = github_repository.repository.name
  count      = var.cookbook_auto_release_config.enabled ? 1 : 0

  configuration {
    url          = var.cookbook_auto_release_config.cookbook_release_creator_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.cookbook_auto_release_config.secret
  }
  active = true
  events = ["pull_request"]
}

resource "github_repository_webhook" "cookbook_supermarket_uploader" {
  repository = github_repository.repository.name
  count      = var.cookbook_auto_release_config.enabled ? 1 : 0

  configuration {
    url          = var.cookbook_auto_release_config.cookbook_supermarket_uploader_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.cookbook_auto_release_config.secret
  }
  active = true
  events = ["deployment"]
}

resource "github_repository_webhook" "deployment_status_slack_notifier" {
  repository = github_repository.repository.name
  count      = var.cookbook_auto_release_config.enabled ? 1 : 0

  configuration {
    url          = var.cookbook_auto_release_config.deployment_status_slack_notifier_url
    content_type = "form"
    insecure_ssl = false
    secret       = var.cookbook_auto_release_config.secret
  }
  active = true
  events = ["deployment_status"]
}
