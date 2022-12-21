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
variable "env" {
  description = "Environment tag"
}

variable "emails" {
  
}
variable "tags" {

}