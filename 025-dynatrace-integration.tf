resource "dynatrace_email_notification" "email_integration" {
  count      = var.enable_email_integration ? 1 : 0
  active     = var.enabled
  name       = var.email_name
  profile    = var.alerting_profile_id
  subject    = var.email_subject
  to         = var.email_receivers
  cc         = var.email_cc_receivers
  body       = var.email_body
  depends_on = [dynatrace_alerting.alerts]
}