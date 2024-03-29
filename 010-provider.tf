
terraform {
  #backend "azurerm" {}
  required_providers {
    dynatrace = {
      version = "1.47.3"
      source  = "dynatrace-oss/dynatrace"
    }
  }
}
provider "dynatrace" {
  dt_env_url   = "https://${var.tenant_id}.live.dynatrace.com"
  dt_api_token = var.dynatrace_token
}