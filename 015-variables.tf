variable "tenant_id" {
  type        = string
  description = "Dynatrace environment URL"
}
variable "dynatrace_token" {
  type        = string
  description = "Dynatrace API access key"
}
variable "dt_alerts" {
  description = "Dynatrace Alerts"
}
variable "enable_email_integration" {
  default = false
}
variable "alert_rules" { default = null }
variable "alert_filters" { default = null }
variable "email_name" { default = null }
variable "enabled" { default = false }
variable "alerting_profile_id" { default = null }
variable "email_body" { default = null }
variable "email_subject" { default = null }
variable "email_receivers" { default = null }
variable "email_cc_receivers" { default = null }

variable "enable_snow_integration" {
  default = false
}
variable "snow_enabled" { default = false }
variable "snow_send_incidents" { default = false }
variable "snow_message" { default = null }
variable "snow_name" { default = null }
variable "snow_alerting_profile_id" { default = null }
variable "snow_username" { default = null }
variable "snow_url" { default = null }


variable "tags" {

}