output "alerting_profile_id" {
  description = "Alerting profile ID"
  value       = { for k,v in dynatrace_alerting.alerts : k => v }
}
