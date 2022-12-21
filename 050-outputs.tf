output "alerting_profile_id" {
  description = "Alerting profile ID"
  value       = keys({ for alert in dynatrace_alerting.alerts : alert.id => alert.name })
}
