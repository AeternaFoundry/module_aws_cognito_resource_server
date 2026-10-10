variable "cognito_resource_servers" {
  description = <<EOT
Map of cognito_resource_servers, attributes below
Required:
    - identifier
    - name
    - user_pool_id
Optional:
    - region
    - scope (block):
        - scope_description (required)
        - scope_name (required)
EOT

  type = map(object({
    identifier   = string
    name         = string
    user_pool_id = string
    region       = optional(string)
    scope = optional(list(object({
      scope_description = string
      scope_name        = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cognito_resource_servers : (
        v.scope == null || (length(v.scope) <= 100)
      )
    ])
    error_message = "Each scope list must contain at most 100 items"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

