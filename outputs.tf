output "web_analytics_sites_lookup_account_id" {
  description = "Map of account_id values across all web_analytics_sites_lookup, keyed the same as var.web_analytics_sites_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.cloudflare_web_analytics_sites.web_analytics_sites_lookup : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "web_analytics_sites_lookup_max_items" {
  description = "Map of max_items values across all web_analytics_sites_lookup, keyed the same as var.web_analytics_sites_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_web_analytics_sites.web_analytics_sites_lookup : k => v.max_items if v.max_items != null }
}
output "web_analytics_sites_lookup_order_by" {
  description = "Map of order_by values across all web_analytics_sites_lookup, keyed the same as var.web_analytics_sites_lookup except keys with no order_by are omitted"
  value       = { for k, v in data.cloudflare_web_analytics_sites.web_analytics_sites_lookup : k => v.order_by if v.order_by != null && length(v.order_by) > 0 }
}
output "web_analytics_sites_lookup_result" {
  description = "Map of result values across all web_analytics_sites_lookup, keyed the same as var.web_analytics_sites_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_web_analytics_sites.web_analytics_sites_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

