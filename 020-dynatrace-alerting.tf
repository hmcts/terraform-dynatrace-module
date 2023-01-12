resource "dynatrace_alerting" "alerts" {
  for_each        = toset(try(var.dt_alerts, []))
  name            = each.value.name
  management_zone = each.value.dt_management_zone
  rules {
    dynamic "rule" {
      for_each = try(var.alert_rules, {})
      content {
        include_mode     = rule.value.include_mode
        tags             = var.tags
        delay_in_minutes = rule.value.delay_in_minutes
        severity_level   = rule.value.severity_level
      }
    }
  }
  filters {
    dynamic "filter" {
      for_each = try({ for key, f_filter in var.alert_filters : format("%.4d", key) => f_filter }, {}) #var.alert_filters
      content {
        predefined {
          negate = filter.value.negate
          type   = filter.value.type
        }
      }
    }
  }

}