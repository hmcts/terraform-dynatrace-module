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
resource "dynatrace_service_now_notification" "snow_integration" {
  count     = var.enable_snow_integration ? 1 : 0
  active    = var.snow_enabled
  incidents = var.snow_send_incidents
  message   = var.snow_message
  name      = var.snow_name
  profile   = var.snow_alerting_profile_id
  username  = var.snow_username
  password  = var.snow_password
  url       = var.snow_url

}