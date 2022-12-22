resource "dynatrace_alerting" "alerts" {
  for_each        = var.dt_alerts
  name            = each.value.name
  management_zone = each.value.dt_management_zone
  rules {
    dynamic "rule" {
      for_each = var.alert_rules
      content {
        include_mode     = rule.value.include_mode
        tags             = var.tags
        delay_in_minutes = rule.value.delay_in_minutes
        severity_level   = rule.value.severity_level
      }
    }
  }
}