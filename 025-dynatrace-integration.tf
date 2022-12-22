resource "dynatrace_notification" "integration" {
  email {
    name             = var.email_name
    active           = var.enabled
    alerting_profile = var.alerting_profile_id
    body             = var.email_body
    subject          = var.email_subject
    receivers        = var.email_receivers
    cc_receivers     = var.email_cc_receivers
  }
  depends_on = [dynatrace_alerting.alerts]
}