variable "web_analytics_sites_lookup" {
  description = <<EOT
Map of web_analytics_sites_lookup, attributes below
Optional:
    - account_id
    - max_items
    - order_by
EOT

  type = map(object({
    account_id = optional(string)
    max_items  = optional(number)
    order_by   = optional(string)
  }))
}

