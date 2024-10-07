resource "aws_budgets_budget" "management-account-budget" {
  name              = "management-account-monthly"
  budget_type       = "COST"
  limit_amount      = "100"
  limit_unit        = "USD"
  time_period_end   = "2087-06-15_00:00"
  time_period_start = "2024-07-01_00:00"
  time_unit         = "DAILY"

  cost_filter {
    name = "LinkedAccount"
    values = [
      "942837959305",
    ]
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 5
    threshold_type             = "ABSOLUTE_VALUE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["malachiron@gmail.com"]
  }

  tags = {
    Tag1 = "Value1"
    Tag2 = "Value2"
  }
}
resource "aws_budgets_budget" "randd-account-budget" {
  name              = "randd-account-monthly"
  budget_type       = "COST"
  limit_amount      = "100"
  limit_unit        = "USD"
  time_period_end   = "2087-06-15_00:00"
  time_period_start = "2024-07-01_00:00"
  time_unit         = "DAILY"

  cost_filter {
    name = "LinkedAccount"
    values = [
      "396913727212",
    ]
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 5
    threshold_type             = "ABSOLUTE_VALUE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["malachiron@gmail.com"]
  }

  tags = {
    Tag1 = "Value1"
    Tag2 = "Value2"
  }
}
resource "aws_budgets_budget" "devops-account-budget" {
  name              = "devops-budget-account-monthly"
  budget_type       = "COST"
  limit_amount      = "100"
  limit_unit        = "USD"
  time_period_end   = "2087-06-15_00:00"
  time_period_start = "2024-07-01_00:00"
  time_unit         = "DAILY"

  cost_filter {
    name = "LinkedAccount"
    values = [
      "296062592032",
    ]
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 5
    threshold_type             = "ABSOLUTE_VALUE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["malachiron@gmail.com"]
  }

  tags = {
    Tag1 = "Value1"
    Tag2 = "Value2"
  }
}
resource "aws_budgets_budget" "it-account-budget" {
  name              = "it-budget-account-monthly"
  budget_type       = "COST"
  limit_amount      = "100"
  limit_unit        = "USD"
  time_period_end   = "2087-06-15_00:00"
  time_period_start = "2024-07-01_00:00"
  time_unit         = "DAILY"

  cost_filter {
    name = "LinkedAccount"
    values = [
      "225989362814",
    ]
  }

  notification {
    comparison_operator        = "GREATER_THAN"
    threshold                  = 5
    threshold_type             = "ABSOLUTE_VALUE"
    notification_type          = "ACTUAL"
    subscriber_email_addresses = ["malachiron@gmail.com"]
  }

  tags = {
    Tag1 = "Value1"
    Tag2 = "Value2"
  }
}