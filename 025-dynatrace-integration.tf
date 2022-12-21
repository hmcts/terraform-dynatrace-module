resource "dynatrace_notification" "integration" {
  dynamic "email" {
    for_each = var.emails
    content {
      name             = email.value.email_name
      active           = email.value.enabled
      alerting_profile = email.value.alerting_profile_id
      body             = email.value.email_body
      subject          = email.value.email_subject
      receivers        = email.value.email_receivers
      cc_receivers     = email.value.email_cc_receivers
    }
  }
  depends_on = [dynatrace_alerting.alerts]
}