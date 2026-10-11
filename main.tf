data "cloudflare_web_analytics_sites" "web_analytics_sites_lookup" {
  for_each = var.web_analytics_sites_lookup

  account_id = each.value.account_id
  max_items  = each.value.max_items
  order_by   = each.value.order_by
}

