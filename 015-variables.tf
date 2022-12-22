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

variable "alert_rules" {}
variable "email_name" {}
variable "enabled" {}
variable "alerting_profile_id" {}
variable "email_body" {}
variable "email_subject" {}
variable "email_receivers" {}
variable "email_cc_receivers" {}
variable "tags" {

}