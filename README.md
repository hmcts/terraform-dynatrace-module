# terraform-dynatrace-module
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_dynatrace"></a> [dynatrace](#requirement\_dynatrace) | 1.15.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_dynatrace"></a> [dynatrace](#provider\_dynatrace) | 1.15.0 |

## Resources

| Name | Type |
|------|------|
| [dynatrace_alerting.alerts](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/1.15.0/docs/resources/alerting) | resource |
| [dynatrace_email_notification.email_integration](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/1.15.0/docs/resources/email_notification) | resource |
| [dynatrace_service_now_notification.snow_integration](https://registry.terraform.io/providers/dynatrace-oss/dynatrace/1.15.0/docs/resources/service_now_notification) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alert_filters"></a> [alert\_filters](#input\_alert\_filters) | n/a | `map` | `{}` | no |
| <a name="input_alert_rules"></a> [alert\_rules](#input\_alert\_rules) | n/a | `map` | `{}` | no |
| <a name="input_alerting_profile_id"></a> [alerting\_profile\_id](#input\_alerting\_profile\_id) | n/a | `any` | `null` | no |
| <a name="input_dt_alerts"></a> [dt\_alerts](#input\_dt\_alerts) | Dynatrace Alerts | `list` | `[]` | no |
| <a name="input_dynatrace_token"></a> [dynatrace\_token](#input\_dynatrace\_token) | Dynatrace API access key | `string` | n/a | yes |
| <a name="input_email_body"></a> [email\_body](#input\_email\_body) | n/a | `any` | `null` | no |
| <a name="input_email_cc_receivers"></a> [email\_cc\_receivers](#input\_email\_cc\_receivers) | n/a | `any` | `null` | no |
| <a name="input_email_name"></a> [email\_name](#input\_email\_name) | n/a | `any` | `null` | no |
| <a name="input_email_receivers"></a> [email\_receivers](#input\_email\_receivers) | n/a | `any` | `null` | no |
| <a name="input_email_subject"></a> [email\_subject](#input\_email\_subject) | n/a | `any` | `null` | no |
| <a name="input_enable_email_integration"></a> [enable\_email\_integration](#input\_enable\_email\_integration) | n/a | `bool` | `false` | no |
| <a name="input_enable_snow_integration"></a> [enable\_snow\_integration](#input\_enable\_snow\_integration) | n/a | `bool` | `false` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_snow_alerting_profile_id"></a> [snow\_alerting\_profile\_id](#input\_snow\_alerting\_profile\_id) | n/a | `any` | `null` | no |
| <a name="input_snow_enabled"></a> [snow\_enabled](#input\_snow\_enabled) | n/a | `bool` | `false` | no |
| <a name="input_snow_message"></a> [snow\_message](#input\_snow\_message) | n/a | `any` | `null` | no |
| <a name="input_snow_name"></a> [snow\_name](#input\_snow\_name) | n/a | `any` | `null` | no |
| <a name="input_snow_password"></a> [snow\_password](#input\_snow\_password) | n/a | `any` | `null` | no |
| <a name="input_snow_send_incidents"></a> [snow\_send\_incidents](#input\_snow\_send\_incidents) | n/a | `bool` | `false` | no |
| <a name="input_snow_url"></a> [snow\_url](#input\_snow\_url) | n/a | `any` | `null` | no |
| <a name="input_snow_username"></a> [snow\_username](#input\_snow\_username) | n/a | `any` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `any` | n/a | yes |
| <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id) | Dynatrace environment URL | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alerting_profile_id"></a> [alerting\_profile\_id](#output\_alerting\_profile\_id) | Alerting profile ID |
<!-- END_TF_DOCS -->