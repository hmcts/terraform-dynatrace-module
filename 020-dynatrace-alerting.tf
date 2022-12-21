resource "dynatrace_alerting" "alerts" {
  for_each        = var.dt_alerts
  name            = each.value.name
  management_zone = each.value.dt_management_zone
  rules {
    rule {
      include_mode     = each.value.include_mode
      tags             = [for r in var.tags : "${each.key}.${each.value}"] #toset(var.tags) #["Environment:${var.env}"]
      delay_in_minutes = each.value.delay_in_minutes
      severity_level   = each.value.severity_level
    }
  }
}